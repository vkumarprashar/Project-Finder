package mails;

import BeanClasses.DemandRequest;
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
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class DemandMail 
{
	String message, subject;
	
	public  int mail(String name, String email, String contact,String language, String details, String tittle)
	{
		String host = "smtp.gmail.com";
		String port = "587";
		String mailFrom = "vkumarprashar@gmail.com";
		String password = "vinay@27@27";
		
		//outgoing message information
		String mailTo = "vprashar23@gmail.com";
		message="Name: -"+name+", "
				+ "Email:- "+email+", "
                                        +"Contact Number: -"+contact+", "
                                            + "Tittle: -" +tittle+", "
                                                + "Technology Required: -"+language+", "
                                                    +"Details: -"+details+".";
                                                    
		
		subject="Project On Demand Request From: -"+name;
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
        public int save(DemandRequest dr)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		org.hibernate.Session session=sf.openSession();
		
		Transaction tx=session.beginTransaction();
                
                session.save(dr);
                tx.commit();
            return 1;
        }
}
