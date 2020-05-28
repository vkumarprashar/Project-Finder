package mails;

import java.util.Date;
import java.util.Properties;
import java.util.UUID;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SignupConfirmation
{
	
	public static int sendmail(String name, String PID, String email)
	{
		String host = "smtp.gmail.com";
		String port = "587";
		String mailFrom = "vkumarprashar@gmail.com";
		String password = "vinay@27@27";
		
		//outgoing message information
		String mailTo = email;
		String subject="Confirm Email";
		String message= "Hello "+ name+ ". \n The team here at Project Villa would like to thank you for signing up."
				+ "We Hope that we will complete all your requirements."
				+ "\n \n Here is your PID Number: -"+ PID +". Open the link given below and use this PID Number to Confirm your EMAIL " 
				+"<a href='http://localhost:8080/Project_Finder/confirmEmail.jsp'>CLICK HERE</a>";
		
		//sets SMTP server properties
		Properties properties = new Properties();
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", port);
		properties.put("mail.smtp.auth", true);
		properties.put("mail.smtp.starttls.enable", true);
		
		
		//creates a new session with an authenticator
		Authenticator authenticator = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(mailFrom, password);
			}
		};
		
		Session session = Session.getInstance(properties, authenticator);
		
		//creates a new E-Mail message
		Message msg = new MimeMessage(session);
		
		try {
			msg.setFrom(new InternetAddress(mailFrom));
			InternetAddress[] toAddresses = { new InternetAddress(mailTo)};
			msg.setRecipients(Message.RecipientType.TO, toAddresses);
			msg.setSubject(subject);
			msg.setSentDate(new Date());
			
			//setPlain text message
			msg.setContent(message, "text/html");
			
			//sends the e-mail
			Transport.send(msg);
			
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		return 1;
		
	}
}
