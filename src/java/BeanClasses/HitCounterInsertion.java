package BeanClasses;

import java.util.Iterator;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class HitCounterInsertion
{
	public static int insert(HitCounter hc)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query;
				
		query=session.createQuery("update HitCounter set hitcounter= :hitcounter where sno=:sno");
		query.setParameter("hitcounter", hc.getHitcounter());
		query.setParameter("sno", 1);
		
		int i=query.executeUpdate();
		
		t.commit();
		session.close();
		sf.close();
		return 1;
	}
	public static Iterator get()
	{
		SessionFactory sf=new  Configuration().configure().buildSessionFactory();

		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Criteria c=session.createCriteria(HitCounter.class);
		
		List list=c.list();
		
		t.commit();
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}

}
