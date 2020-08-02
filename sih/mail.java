package sih;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class mail{

private static String USER_NAME = "siddanitulasi";  // GMail user name (just the part before "@gmail.com")
private static String PASSWORD = "tulasi@11"; // GMail password

private static String RECIPIENT = "hanifa.ca.1999@gmail.com";

public static void main(String[] args) {
    String from = USER_NAME;
    String pass = PASSWORD;
    String[] to = { RECIPIENT }; // list of recipient email addresses
    String subject = "Java send mail example";
    String body = "<div style=\"width:800px; height:600px; padding:20px; text-align:center; border: 10px solid #787878\">\n" +
    		"<div style=\"width:750px; height:550px; padding:20px; text-align:center; border: 5px solid #787878\">\n" +
    		"       <span style=\"font-size:50px; font-weight:bold\">Certificate of Tenders</span>\n" +
    		"       <br><br>\n" +
    		"       <span style=\"font-size:28px\"><i>This is to certify that</i></span>\n" +
    		"       <br><br>\n" +
    		"       <span style=\"font-size:30px\"><b>person</b></span><br/><br/>\n" +
    		"       <span style=\"font-size:27px\"><i><b>that the name contract with contract id is successful won the tender</b></i></span> <br/><br/>\n" +
    		"        <br></br>\n"+
    		"       <span style=\"font-size:40px\"><p align=\"right\">text to move </p></span><br/><br/>\n" +      
    		"</div>\n" +
    		"</div>";

    sendFromGMail(from, pass, to, subject, body);
}

private static void sendFromGMail(String from, String pass, String[] to, String subject, String body) {
    Properties props = System.getProperties();
  String host = "smtp.gmail.com";

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.smtp.ssl.trust", host);
    props.put("mail.smtp.user", from);
    props.put("mail.smtp.password", pass);
    props.put("mail.smtp.port", "587");
    props.put("mail.smtp.auth", "true");


    Session session = Session.getDefaultInstance(props);
    MimeMessage message = new MimeMessage(session);

    try {


        message.setFrom(new InternetAddress(from));
        InternetAddress[] toAddress = new InternetAddress[to.length];

        // To get the array of addresses
        for( int i = 0; i < to.length; i++ ) {
            toAddress[i] = new InternetAddress(to[i]);
        }

        for( int i = 0; i < toAddress.length; i++) {
            message.addRecipient(Message.RecipientType.TO, toAddress[i]);
        }



        message.setSubject(subject);
        message.setContent(body,"text/html");


        Transport transport = session.getTransport("smtp");


        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();

    }
    catch (AddressException ae) {
        ae.printStackTrace();
    }
    catch (MessagingException me) {
        me.printStackTrace();
    }
    }
   } 