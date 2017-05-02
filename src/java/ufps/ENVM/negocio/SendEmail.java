/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ufps.ENVM.negocio;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class SendEmail {

     String senderEmail = "";//<----- coloque aqui el correo del emisor
     String senderPassword = "";//<----- coloque aqui la contraseña del correo del emisor
    final String emailSMTPserver = "smtp.gmail.com";
    final String emailServerPort = "587";
    String receiverEmail = null;
    String emailSubject = null;
    String emailBody = null;

    public SendEmail(String correoEmisor, String contra, String receiverEmail, String Subject, String message) {
        this.senderEmail = correoEmisor;
        this.senderPassword = contra;
        
        this.receiverEmail = receiverEmail;
        this.emailSubject = Subject;
        this.emailBody = message;

        Properties props = new Properties();
        props.put("mail.smtp.user", senderEmail);
        props.put("mail.smtp.host", emailSMTPserver);
        props.put("mail.smtp.port", emailServerPort);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port", emailServerPort);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        SecurityManager security = System.getSecurityManager();

        try {
            Authenticator auth = new SMTPAuthenticator();
            Session session = Session.getInstance(props, auth);

            Message msg = new MimeMessage(session);
            msg.setText(emailBody);
            msg.setSubject(emailSubject);
            msg.setFrom(new InternetAddress(senderEmail));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(receiverEmail));
            Transport.send(msg);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    private class SMTPAuthenticator extends javax.mail.Authenticator {

        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(senderEmail, senderPassword);
        }
    }

}
