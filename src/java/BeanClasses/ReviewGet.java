package BeanClasses;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class ReviewGet 
{
	public  List get()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from reviewBean order by sno DESC");
		query.setMaxResults(6);
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		/*while(it.hasNext())
		{
			reviewBean rb=(reviewBean) it.next();
			System.out.print(rb.getName());
			System.out.print("\t"+rb.getEmail());
			System.out.print("\t"+rb.getContact());
			System.out.println("\t"+rb.getMessage());
		}*/
		
		session.close();
		sf.close();
		return list;
	}
	public static Iterator count()
	{
		SessionFactory sf=new  Configuration().configure().buildSessionFactory();

		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query;
		query=session.createQuery("select max(sno) from reviewBean");
		
		List list=query.list();
		
		t.commit();
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	
}
