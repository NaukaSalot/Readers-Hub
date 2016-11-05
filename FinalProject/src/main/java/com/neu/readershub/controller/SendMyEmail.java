package com.neu.readershub.controller;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.neu.readershub.pojo.Order;



/**
 *
 * @author Nauka Salot
 */
public class SendMyEmail { 
    private final String user="readershubneu@gmail.com";
    private final String password="123@456789";
    private String recipient;
    
    public void sendEmail(Order order){
    	String recipient = order.getCustomer().getEmail();
    	String body = "";
        Properties props = new Properties();  
   props.put("mail.smtp.starttls.enable", "true"); 
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.user", user); // User name
            props.put("mail.smtp.password", password); // password
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true"); 
     
   Session session = Session.getDefaultInstance(props,  
    new javax.mail.Authenticator() {  
      protected PasswordAuthentication getPasswordAuthentication() {  
    return new PasswordAuthentication(user,password);  
      }  
    });  
  
   //Compose the message  
    try {  
     MimeMessage message = new MimeMessage(session);  
     message.setFrom(new InternetAddress(user));  
     message.addRecipient(Message.RecipientType.TO,new InternetAddress(recipient));  
     message.setSubject("Appointment Confirmation");  
     message.setText(body);  
    
  

     
   
    Transport.send(message);  
  
     System.out.println("message sent successfully...");  
   
     } catch (MessagingException e) {e.printStackTrace();}  
    
}
    
   

}