/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mails;

import java.io.IOException; 
import java.util.*; 
import javax.mail.*; 
import javax.mail.internet.*; 
import javax.activation.*; 

/**
 *
 * @author Dell
 */
public class SendProject {
    public static int send(String sendemail, String pname,String uploaded, String technology, String ppt, String synopsis, String report) throws IOException
    {
        System.out.println("EMAIL="+sendemail);
        System.out.println("PROJECT NAME="+ pname);
        System.out.println("UPLOAD "+uploaded);
        System.out.println("TECHNOLOGY="+technology);
        System.out.println("PPT="+ppt);
        System.out.println("SYNOPSIS="+ synopsis);
        System.out.println("REPORT=="+report);
        
        String to=sendemail; 
        final String user="vkumarprashar@gmail.com"; 
        final String password="vinay@27@27"; 

//        String pdfFileName = uploaded+"_"+projectname+"_"+technology+"_projectppt"+".pdf";
        String gurupath = "C:/Users/Dell/Desktop/Projects/";
        
        //1) get the session object 
        Properties pro=new Properties(); 
        pro.put("mail.smtp.host","smtp.gmail.com"); 
        pro.put("mail.smtp.socketFactory.port","465"); 
        pro.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
        pro.put("mail.smtp.auth", "true"); 
        pro.put("mail.smtp.port", "465"); 

        Session session = Session.getInstance(pro, 
        new javax.mail.Authenticator() { 
        protected PasswordAuthentication getPasswordAuthentication() { 
        return new PasswordAuthentication(user,password); 
        } 
        }); 

        
        //2) compose message 
        try{ 
            MimeMessage message = new MimeMessage(session); 
        message.setFrom(new InternetAddress(user)); 
        message.addRecipient(Message.RecipientType.TO,new InternetAddress(to)); 
        message.setSubject("Project"); 

        //3) create MimeBodyPart object and set your message content 
        MimeBodyPart messageBodyPart1 = new MimeBodyPart(); 
        messageBodyPart1.setContent("<h2>Dear Customer,</h2> This is the complete Project that is Send to you. For any Queries You can contact us.","text/html"); 
        

        //4) create new MimeBodyPart object and set DataHandler object to this object 
        MimeBodyPart messageBodyPart2 = new MimeBodyPart(); 

        String filename1 = gurupath+ uploaded+"_"+pname+"_"+technology+"_completeproject.zip";
        DataSource source1 = new FileDataSource(filename1); 
        messageBodyPart2.setDataHandler(new DataHandler(source1)); 
        messageBodyPart2.setFileName("Project Zip"); 

        
        MimeBodyPart messageBodyPart3 = new MimeBodyPart(); 
        MimeBodyPart messageBodyPart4 = new MimeBodyPart(); 
        MimeBodyPart messageBodyPart5 = new MimeBodyPart(); 
        
        if(synopsis.equals("yes"))
        {
            
        String filename2 = gurupath+uploaded+"_"+pname+"_"+technology+"_projectsynopsis"+".pdf";
        DataSource source2 = new FileDataSource(filename2); 
        messageBodyPart3.setDataHandler(new DataHandler(source2)); 
        messageBodyPart3.setFileName("SYNOPSIS"); 
        }
        if(report.equals("yes"))
        {
            
        String filename2 = gurupath+uploaded+"_"+pname+"_"+technology+"_projectsynopsis"+".pdf";
        DataSource source2 = new FileDataSource(filename2); 
        messageBodyPart4.setDataHandler(new DataHandler(source2)); 
        messageBodyPart4.setFileName("SYNOPSIS"); 
        }
        if(ppt.equals("yes"))
        {
            
        String filename2 = gurupath+uploaded+"_"+pname+"_"+technology+"_projectsynopsis"+".pdf";
        DataSource source2 = new FileDataSource(filename2); 
        messageBodyPart5.setDataHandler(new DataHandler(source2)); 
        messageBodyPart5.setFileName("SYNOPSIS"); 
        }


        //5) create Multipart object and add MimeBodyPart objects to this object 
        Multipart multipart = new MimeMultipart(); 
        multipart.addBodyPart(messageBodyPart1); 
        multipart.addBodyPart(messageBodyPart2); 
        if(synopsis.equals("yes"))
        {
            multipart.addBodyPart(messageBodyPart3); 
        }
        if(report.equals("yes"))
        {
            multipart.addBodyPart(messageBodyPart4); 
        }
        if(ppt.equals("yes"))
        {
            multipart.addBodyPart(messageBodyPart5); 
        }


        //6) set the multiplart object to the message object 
        message.setContent(multipart); 

        //7) send message 
            Transport.send(message); 

        System.out.println("message sent...."); 
        }catch (MessagingException ex) 
        {
            ex.printStackTrace();
        } 
        return 1;
    } 
            
}
