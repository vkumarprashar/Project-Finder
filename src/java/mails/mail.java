package mails;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class mail 
{
	 String subject;
	public  int mail(String name,String sub,String message)
	{
		
		String host = "smtp.gmail.com";
		String port = "587";
		String mailFrom = "vkumarprashar@gmail.com";
		String password = "vinay@27@27";
		
		//outgoing message information
		String mailTo = "vprashar23@gmail.com";
		subject=name+", "+sub;
		
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
			msg.setText(message);
			
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
