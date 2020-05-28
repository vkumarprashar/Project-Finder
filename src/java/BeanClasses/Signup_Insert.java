package BeanClasses;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Signup_Insert
{
	public static int signup(SignUp su)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction tx=session.beginTransaction();
		
		session.save(su);
		tx.commit();
		session.close();
		sf.close();
		
		return 1;
	}
}
