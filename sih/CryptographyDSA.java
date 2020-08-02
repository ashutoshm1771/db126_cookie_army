package sih;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
////////////////////////////////////////////////////////////////////////////////////////////////////
public class CryptographyDSA
		extends Application
{
    @Override
    public void start(Stage primaryStage)
		    throws Exception
    {
        Parent root = FXMLLoader.load(getClass().getResource("cryptographyDSA.fxml"));
        Scene scene = new Scene(root);
        scene.getStylesheets().add("application/CryptographyDSA.css");
        primaryStage.setTitle("Podstawy kryptografii - Digital Signature Algorithm");
        primaryStage.setMinWidth(980);
        primaryStage.setMinHeight(640);
        primaryStage.setScene(scene);
        primaryStage.show();
    }
    public static void main(String[] args)
    {
        launch(args);
    }
}
////////////////////////////////////////////////////////////////////////////////////////////////////