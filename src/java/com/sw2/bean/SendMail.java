/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.bean;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author cvalencia
 */
public class SendMail {

    Usuario u = new Usuario();
    public static String Username = "jamaperufood@gmail.com";
    public static String PassWord = "jamaperuweb";
    String Mensage = "";
    String To = "";
    String Subject = "";
    String content = "";

    public String getMensage() {
        return Mensage;
    }

    public void setMensage(String Mensage) {
        this.Mensage = Mensage;
    }

    public String getTo() {
        return To;
    }

    public void setTo(String To) {
        this.To = To;
    }

    public String getSubject() {
        return Subject;
    }

    public void setSubject(String Subject) {
        this.Subject = Subject;
    }

    public void SendMail(String nombre) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
//        props.put("mail.smtp.starttls.enable", "true");
//        props.put("mail.smtp.debug", "true");
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.socketFactory.port", "587");
//        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//        props.put("mail.smtp.socketFactory.fallback", "false");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(Username, PassWord);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(Username));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(To));
            message.setSubject(Subject);
            message.setText(Mensage);
            message.setContent("<head>\n"
                    + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                    + "<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n"
                    + "        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n"
                    + "    </head>\n"
                    + "    <body>\n"
                    + "\n"
                    + "        <div class=\"col-xs-12\">\n"
                    + "            <div class=\"container col-xs-6\" style=\"background-color: #ffffff;border: 10px solid #ff6600\">\n"
                    + "\n"
                    + "\n"
                    + "                <div class=\"row\">\n"
                    + "                    <h1 class=\"col-xs-12\">Bienvenido a Jama Perú: </h1>\n" + "<h1>" + nombre + "</h1>"
                    + "                    <div class=\"col-xs-6\">\n"
                    + "                        <img  class=\" img-responsive \"  style=\"border: 5px solid #666 ;width: auto\" src=\"https://scontent-mia1-1.xx.fbcdn.net/v/t34.0-12/13672494_1374774765871941_93328390_n.png?oh=3ed5e9792d30b02f9b3baccfad1cdf44&oe=57876B48\"  alt=\"\"/>\n"
                    + "                    </div>\n"
                    + "                    <div  class=\"col-xs-12\"   style=\"background-color: #ffffff\" >\n"
                    + "                        <h1> Gracias por Registrarte!</h1>\n"
                    + "                    </div>\n"
                    + "\n"
                    + "\n"
                    + "\n"
                    + "\n"
                    + "                </div>\n"
                    + "                \n"
                    + "             \n"
                    + "            <div class=\" col-xs-6\" style=\"background-color: #ffffff\">\n"
                    + "                </div>\n"
                    + "            </div>\n"
                    + "        </div>     ", "text/html");
//            message.setContent(" <head>\n"+
//                    "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"+
//                    "<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/></head>\n"+
//                    "\n"+"<h1>Bienvenido a Jama Peru</h1>"+"<h1>"+nombre+"</h1>"+
//                            "<body>"+"<div class=\"container\">"+
//                            "<img src=\"https://scontent-mia1-1.xx.fbcdn.net/v/t34.0-12/13672494_1374774765871941_93328390_n.png?oh=3ed5e9792d30b02f9b3baccfad1cdf44&oe=57876B48 \" alt=\"\"/>\n"+
//                            "\n" +
//                   " <div class=\"container\n>"+
//"        <div  class=\"col-md-6   style=\"background-color: #66ff66\" >\n"+
//                            "<div class=\"col-md-6  style=\"background-color: #ccff66;padding: 5 px\">Gracias<br> por<br> Registrarse<br>\n" +
//"             </div>\n"+
//                        " </div>\n" +
//"       \n" +
//"        \n" +
//"        \n" +
//"        </div>\n"+
//                    
//             "        </div>\n"       
//                    +"</body>\n"    ,
//             "text/html");

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    public void SendMail2() {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
//        props.put("mail.smtp.starttls.enable", "true");
//        props.put("mail.smtp.debug", "true");
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.socketFactory.port", "465");
//        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//        props.put("mail.smtp.socketFactory.fallback", "false");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(Username, PassWord);
                    }
                });
        

        try {
             
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(Username));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(To));
            message.setSubject(Subject);
            message.setText(Mensage);

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

}
