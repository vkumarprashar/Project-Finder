package BeanClasses;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class logincheck
{
	public static int login(SignUp su, String password)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction tx=session.beginTransaction();
		SignUp s;
		s=(SignUp) session.get(SignUp.class, su.getEmail());
		tx.commit();
		if(s!=null)
		{
			if(s.getPassword().equals(password))
			{
				session.close();
				sf.close();
				return 1;
			}
			else
			{
				session.close();
				sf.close();
				return 2;
			}
		}
		else
		{
			session.close();
			sf.close();
			return 0;
		}
	}
	
	public static String name(String email)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction tx=session.beginTransaction();
		SignUp s;
		s=(SignUp) session.get(SignUp.class, email);
		tx.commit();
		if(s!=null)
		{
			String name=s.getFullname();
			return name;
		}
		else
		{
			session.close();
			sf.close();
			return null;
		}
	}
	public static String contact(String email)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction tx=session.beginTransaction();
		SignUp s;
		s=(SignUp) session.get(SignUp.class, email);
		tx.commit();
		if(s!=null)
		{
			String contact=s.getContact();
			return contact;
		}
		else
		{
			session.close();
			sf.close();
			return null;
		}
	}
	
}