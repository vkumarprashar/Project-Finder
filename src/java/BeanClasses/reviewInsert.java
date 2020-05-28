package BeanClasses;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class reviewInsert 
{
	public static int insert(reviewBean b)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session = sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		session.save(b);
		t.commit();
		session.close();
		sf.close();
		
		return 1;
	}
}
