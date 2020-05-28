package BeanClasses;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class passwordupdate
{
	public static int update(String email, String password,String newpassword)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session = sf.openSession();
		
		Transaction t=session.beginTransaction();
		Query query;
		
		SignUp s;
		s=(SignUp) session.get(SignUp.class, email);
		t.commit();
		if(s!=null)
		{	
			if(s.getPassword().equals(password))
			{
				t=session.beginTransaction();
				query=session.createQuery("update SignUp set password= :pass where email=:email");
				query.setParameter("pass", newpassword);
				query.setParameter("email", email);
				int i=query.executeUpdate();
				t.commit();
				if(i>0)
				{
					session.close();
					sf.close();
					return 1;
				}
				else
				{
					session.close();
					sf.close();
					return 0;
				}
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
	
	public static int direct(String email, String newpassword)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session = sf.openSession();
		
		Transaction t=session.beginTransaction();
		Query query;
		query=session.createQuery("update SignUp set password= :pass where email=:email");
		query.setParameter("pass", newpassword);
		query.setParameter("email", email);
		int i=query.executeUpdate();
		t.commit();
		if(i>0)
		{
			session.close();
			sf.close();
			return 1;
		}
		else
		{
			session.close();
			sf.close();
			return 0;
		}
	}
}
