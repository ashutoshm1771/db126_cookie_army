package sih;

import cryptography.Converter;
import cryptography.DigitalSignatureAlgorithm;
import cryptography.FileManager;
import javafx.event.ActionEvent;
import javafx.scene.control.*;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import javafx.util.Pair;

import java.io.File;
import java.math.BigInteger;
import java.util.Optional;

////////////////////////////////////////////////////////////////////////////////////////////////////
public class CryptographyDSAController
{
	//---------------------------------------------------------------------------------- UI elements
	public TextField textFieldP;
	public TextField textFieldQ;
	public TextField textFieldG;
	public TextField textFieldX;
	public TextField textFieldY;
	public Button buttonSignData;
	public Button buttonSignFile;
	public Button buttonVerifyData;
	public Button buttonVerifyFile;
	public TextArea textAreaData;
	public TextArea textAreaSignature;
	public Button buttonGenerateKey;
	public Button buttonClearKey;
	public Button buttonLoadKey;
	public Button buttonSaveKey;

	//------------------------------------------------------------------------------- Event handlers
	public void onActionGenerateKey(ActionEvent actionEvent)
	{
		try
		{
			Pair<DigitalSignatureAlgorithm.PublicKey, DigitalSignatureAlgorithm.PrivateKey> keys =
					digitalSignatureAlgorithm.generateKeys();
			DigitalSignatureAlgorithm.PublicKey publicKey = keys.getKey();
			DigitalSignatureAlgorithm.PrivateKey privateKey = keys.getValue();

			setPublicKey(publicKey);
			setPrivateKey(privateKey);

			showMessageBox("Generowanie klucza",
					"Generowanie pary kluczy publicznego i prywatnego zakończone sukcesem!", Alert.AlertType.INFORMATION);
		}
		catch (Exception exception)
		{
			showMessageBox("Błąd",
					"Generowanie pary kluczy publicznego i prywatnego zakończyło się niepowodzeniem!", Alert.AlertType.ERROR);
			exception.printStackTrace();
		}
	}

	public void onActionClearKey(ActionEvent actionEvent)
	{
		textFieldP.setText("");
		textFieldQ.setText("");
		textFieldG.setText("");
		textFieldX.setText("");
		textFieldY.setText("");
	}

	public void onActionLoadKey(ActionEvent actionEvent)
	{
		Stage stage = new Stage();
		String openFileTitle, filterDescription, filterExtension;

		Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
		alert.setTitle("Wybór typu klucza do wczytania");
		alert.setHeaderText(null);
		alert.setContentText("Wybierz, który typ klucza wczytać.");

		ButtonType buttonTypePublic = new ButtonType("Publiczny");
		ButtonType buttonTypePrivate = new ButtonType("Prywatny");
		ButtonType buttonTypeCancel = new ButtonType("Anuluj", ButtonBar.ButtonData.CANCEL_CLOSE);

		alert.getButtonTypes().setAll(buttonTypePublic, buttonTypePrivate, buttonTypeCancel);

		Optional<ButtonType> result = alert.showAndWait();
		if (result.get() == buttonTypePublic)
		{
			openFileTitle = "Otwórz plik klucza publicznego...";
			filterDescription = "DSA Public Key (*.DSAPubl)";
			filterExtension = "*.DSAPubl";
		}
		else if (result.get() == buttonTypePrivate)
		{
			openFileTitle = "Otwórz plik klucza prywatnego...";
			filterDescription = "DSA Private Key (*.DSAPriv)";
			filterExtension = "*.DSAPriv";
		}
		else
			return;

		FileChooser fileChooser = new FileChooser();
		fileChooser.setTitle(openFileTitle);
		fileChooser.getExtensionFilters().addAll(
				new FileChooser.ExtensionFilter(filterDescription, filterExtension)
		);
		File fileWithKey = fileChooser.showOpenDialog(stage);

		if(fileWithKey == null)
			return;

		FileManager fileManager = new FileManager();
		try
		{
			String key = new String(fileManager.readBytesFromFile(
					fileWithKey.getAbsolutePath()), "UTF-8");
			String  pString = "", qString = "", gString = "", aString = "";

			for(int i = 0, j = 0; i < key.length(); i++)
				if(key.charAt(i) == '\n')
					j++;
				else
					switch(j)
					{
						case 0: pString += key.charAt(i); break;
						case 1: qString += key.charAt(i); break;
						case 2: gString += key.charAt(i); break;
						case 3: aString += key.charAt(i); break;
					}

			if(result.get() == buttonTypePublic)
				setPublicKey(new DigitalSignatureAlgorithm.PublicKey(
						new BigInteger(pString, radix),
						new BigInteger(qString, radix),
						new BigInteger(gString, radix),
						new BigInteger(aString, radix)
				));
			else
			{
				DigitalSignatureAlgorithm.PrivateKey privateKey = new DigitalSignatureAlgorithm.PrivateKey(
						new BigInteger(pString, radix),
						new BigInteger(qString, radix),
						new BigInteger(gString, radix),
						new BigInteger(aString, radix)
				);
				setPrivateKey(privateKey);
				setPublicKey(new DigitalSignatureAlgorithm.PublicKey(
						privateKey.getDSAParameters(),
						privateKey.getG().mod(privateKey.getP()).modPow(privateKey.getX(), privateKey.getP())
				));
			}

			showMessageBox("Wczytywanie klucza", "Wczytywanie klucza z pliku zakończone sukcesem!", Alert.AlertType.INFORMATION);
		}
		catch(Exception exception)
		{
			showMessageBox("Błąd", "Wczytywanie klucza z pliku zakończyło się niepowodzeniem!", Alert.AlertType.ERROR);
			exception.printStackTrace();
		}
	}

	public void onActionSaveKey(ActionEvent actionEvent)
	{
		Stage stage = new Stage();
		String saveFileTitle, filterDescription, filterExtension;

		Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
		alert.setTitle("Wybór typu klucza do zapisu");
		alert.setHeaderText(null);
		alert.setContentText("Wybierz, który typ klucza zapisać.");

		ButtonType buttonTypePublic = new ButtonType("Publiczny");
		ButtonType buttonTypePrivate = new ButtonType("Prywatny");
		ButtonType buttonTypeCancel = new ButtonType("Anuluj", ButtonBar.ButtonData.CANCEL_CLOSE);

		alert.getButtonTypes().setAll(buttonTypePublic, buttonTypePrivate, buttonTypeCancel);

		Optional<ButtonType> result = alert.showAndWait();
		if (result.get() == buttonTypePublic)
		{
			saveFileTitle = "Zapisz plik klucza publicznego...";
			filterDescription = "DSA Public Key (*.DSAPubl)";
			filterExtension = "*.DSAPubl";
		}
		else if (result.get() == buttonTypePrivate)
		{
			saveFileTitle = "Zapisz plik klucza prywatnego...";
			filterDescription = "DSA Private Key (*.DSAPriv)";
			filterExtension = "*.DSAPriv";
		}
		else
			return;

		FileChooser fileChooser = new FileChooser();
		fileChooser.setTitle(saveFileTitle);
		fileChooser.getExtensionFilters().addAll(
				new FileChooser.ExtensionFilter(filterDescription, filterExtension)
		);
		File fileWithKey = fileChooser.showSaveDialog(stage);

		if(fileWithKey == null)
			return;

		FileManager fileManager = new FileManager();
		try
		{
			String key;
			if(result.get() == buttonTypePublic)
			{
				DigitalSignatureAlgorithm.PublicKey publicKey = getPublicKey();
				key = publicKey.getP().toString(radix) + "\n" +
						publicKey.getQ().toString(radix) + "\n" +
						publicKey.getG().toString(radix) + "\n" +
						publicKey.getY().toString(radix);
			}
			else
			{
				DigitalSignatureAlgorithm.PrivateKey privateKey = getPrivateKey();
				key = privateKey.getP().toString(radix) + "\n" +
						privateKey.getQ().toString(radix) + "\n" +
						privateKey.getG().toString(radix) + "\n" +
						privateKey.getX().toString(radix);
			}
			fileManager.writeBytesToFile(key.getBytes("UTF-8"), fileWithKey.getAbsolutePath());

			showMessageBox("Zapisywanie pliku klucza", "Zapisywanie klucza do pliku zakończone sukcesem!", Alert.AlertType.INFORMATION);
		}
		catch(Exception exception)
		{
			showMessageBox("Błąd", "Zapisywanie klucza do pliku zakończyło się niepowodzeniem!", Alert.AlertType.ERROR);
			exception.printStackTrace();
		}
	}

	public void onActionSignData(ActionEvent actionEvent)
	{
		try
		{
			byte[] data = Converter.stringToBytesUTF8(textAreaData.getText());
			DigitalSignatureAlgorithm.PrivateKey privateKey = getPrivateKey();
			DigitalSignatureAlgorithm.DigitalSignature digitalSignature = digitalSignatureAlgorithm.generateDigitalSignature(data, privateKey);
			textAreaSignature.setText(digitalSignature.getR().toString(radix) + "\n" +
					digitalSignature.getS().toString(radix));

			showMessageBox("Podpisywanie danych",
					"Podpisywanie danych wprowadzonych przez użytkownika zakończone sukcesem!",
					Alert.AlertType.INFORMATION);
		}
		catch(Exception exception)
		{
			showMessageBox("Błąd", "Podpisywanie danych wprowadzonych przez użytkownika zakończyło się niepowodzeniem!", Alert.AlertType.ERROR);
			exception.printStackTrace();
		}
	}

	public void onActionSignFile(ActionEvent actionEvent)
	{
		Stage stage = new Stage();

		FileChooser fileChooser = new FileChooser();
		fileChooser.setTitle("Otwórz plik do podpisania...");
		File fileToSign = fileChooser.showOpenDialog(stage);

		if(fileToSign == null)
			return;

		fileChooser = new FileChooser();
		fileChooser.setTitle("Zapisz plik podpisu...");
		fileChooser.getExtensionFilters().addAll(
				new FileChooser.ExtensionFilter("DSA Signature (*.DSASig)", "*.DSASig")
		);
		File fileWithSignature = fileChooser.showSaveDialog(stage);

		if(fileWithSignature == null)
			return;

		FileManager fileManager = new FileManager();
		try
		{
			byte[] data = fileManager.readBytesFromFile(fileToSign.getAbsolutePath());
			DigitalSignatureAlgorithm.PrivateKey privateKey = getPrivateKey();
			DigitalSignatureAlgorithm.DigitalSignature digitalSignature = digitalSignatureAlgorithm.generateDigitalSignature(data, privateKey);
			fileManager.writeBytesToFile((digitalSignature.getR().toString(radix) + "\n" +
					digitalSignature.getS().toString(radix)).getBytes("UTF-8"), fileWithSignature.getAbsolutePath());

			showMessageBox("Podpisywanie pliku", "Podpisywanie pliku zakończone sukcesem!", Alert.AlertType.INFORMATION);
		}
		catch(Exception exception)
		{
			showMessageBox("Błąd", "Podpisywanie pliku zakończyło się niepowodzeniem!", Alert.AlertType.ERROR);
			exception.printStackTrace();
		}
	}

	public void onActionVerifyData(ActionEvent actionEvent)
	{
		try
		{
			byte[] data = Converter.stringToBytesUTF8(textAreaData.getText());
			DigitalSignatureAlgorithm.PublicKey publicKey = getPublicKey();

			String signatureString = textAreaSignature.getText();
			String rString = signatureString.substring(0, signatureString.indexOf('\n')),
					sString = signatureString.substring(signatureString.indexOf('\n') + 1);

			DigitalSignatureAlgorithm.DigitalSignature digitalSignature =
					new DigitalSignatureAlgorithm.DigitalSignature(
							new BigInteger(rString, radix),
							new BigInteger(sString, radix));

			if (digitalSignatureAlgorithm.verifyDigitalSignature(data, publicKey, digitalSignature))
			{
				showMessageBox("Weryfikacja podpisu",
						"Weryfikacja podpisu zakończona sukcesem!",
						Alert.AlertType.INFORMATION);
			}
			else
			{
				showMessageBox("Weryfikacja podpisu",
						"Nie udało się zweryfikować podpisu. Możliwe przyczyny to:\n" +
								"- podpis nie należy do danych\n" +
								"- parametry algorytmu zmieniły się w stosunku do tych z momentu generowania podpisu",
						Alert.AlertType.ERROR);
			}
		}
		catch(Exception exception)
		{
			showMessageBox("Błąd", "Weryfikacja podpisu zakończyła się niepowodzeniem!", Alert.AlertType.ERROR);
			exception.printStackTrace();
		}
	}

	public void onActionVerifyFile(ActionEvent actionEvent)
	{
		Stage stage = new Stage();

		FileChooser fileChooser = new FileChooser();
		fileChooser.setTitle("Otwórz plik do weryfikacji...");
		File fileToVerify = fileChooser.showOpenDialog(stage);

		if(fileToVerify == null)
			return;

		fileChooser = new FileChooser();
		fileChooser.setTitle("Otwórz plik podpisu...");
		fileChooser.getExtensionFilters().addAll(
				new FileChooser.ExtensionFilter("DSA Signature (*.DSASig)", "*.DSASig")
		);
		File fileWithSignature = fileChooser.showOpenDialog(stage);

		if(fileWithSignature == null)
			return;

		FileManager fileManager = new FileManager();
		try
		{
			byte[] data = fileManager.readBytesFromFile(fileToVerify.getAbsolutePath());
			DigitalSignatureAlgorithm.PublicKey publicKey = getPublicKey();

			String signatureString = new String(fileManager.readBytesFromFile(
					fileWithSignature.getAbsolutePath()), "UTF-8");
			String  rString = signatureString.substring(0, signatureString.indexOf('\n')),
					sString = signatureString.substring(signatureString.indexOf('\n') + 1);

			DigitalSignatureAlgorithm.DigitalSignature digitalSignature =
					new DigitalSignatureAlgorithm.DigitalSignature(
							new BigInteger(rString, radix),
							new BigInteger(sString, radix));

			if(digitalSignatureAlgorithm.verifyDigitalSignature(data, publicKey, digitalSignature))
			{
				showMessageBox("Weryfikacja podpisu",
						"Weryfikacja podpisu zakończona sukcesem!",
						Alert.AlertType.INFORMATION);
			}
			else
			{
				showMessageBox("Weryfikacja podpisu",
						"Nie udało się zweryfikować podpisu. Możliwe przyczyny to:\n" +
								"- podpis nie należy do danych\n" +
								"- parametry algorytmu zmieniły się w stosunku do tych z momentu generowania podpisu",
						Alert.AlertType.ERROR);
			}
		}
		catch(Exception exception)
		{
			showMessageBox("Błąd", "Weryfikacja podpisu zakończyła się niepowodzeniem!", Alert.AlertType.ERROR);
			exception.printStackTrace();
		}
	}

	//---------------------------------------------------------------------------- Application logic
	//--------------------------------------------------------------------- Fields
	private DigitalSignatureAlgorithm digitalSignatureAlgorithm = new DigitalSignatureAlgorithm();
	private final int radix = 16;
	//-------------------------------------------------------------------- Methods
	public CryptographyDSAController()
		throws Exception
	{
	}
	private DigitalSignatureAlgorithm.PublicKey getPublicKey()
	{
		return new DigitalSignatureAlgorithm.PublicKey(getDSAParameters(),
				new BigInteger(textFieldY.getText(), radix));
	}
	private DigitalSignatureAlgorithm.PrivateKey getPrivateKey()
	{
		return new DigitalSignatureAlgorithm.PrivateKey(getDSAParameters(),
				new BigInteger(textFieldX.getText(), radix));
	}
	private DigitalSignatureAlgorithm.DSAParameters getDSAParameters()
	{
		return new DigitalSignatureAlgorithm.DSAParameters(
				new BigInteger(textFieldP.getText(), radix),
				new BigInteger(textFieldQ.getText(), radix),
				new BigInteger(textFieldG.getText(), radix));
	}
	private void setPublicKey(DigitalSignatureAlgorithm.PublicKey publicKey)
	{
		setDSAParameters(publicKey.getDSAParameters());
		textFieldY.setText(publicKey.getY().toString(radix));
	}
	private void setPrivateKey(DigitalSignatureAlgorithm.PrivateKey privateKey)
	{
		setDSAParameters(privateKey.getDSAParameters());
		textFieldX.setText(privateKey.getX().toString(radix));
	}
	private void setDSAParameters(DigitalSignatureAlgorithm.DSAParameters dsaParameters)
	{
		textFieldP.setText(dsaParameters.getP().toString(radix));
		textFieldQ.setText(dsaParameters.getQ().toString(radix));
		textFieldG.setText(dsaParameters.getG().toString(radix));
	}
	private void showMessageBox(String title, String message, Alert.AlertType alertType)
	{
		Alert alert = new Alert(alertType);
		alert.setTitle(title);
		alert.setHeaderText(null);
		alert.setContentText(message);
		alert.showAndWait();
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////