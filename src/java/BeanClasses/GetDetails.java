package BeanClasses;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

public class GetDetails
{
	public static Iterator profile(String email)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction tx=session.beginTransaction();
		Criteria c=session.createCriteria(SignUp.class);
		c.add(Restrictions.eq("email", email));
		tx.commit();
		List list=c.list();
		Iterator it = list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
        public static Iterator userDetails(String email)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
            Session session=sf.openSession();

            Transaction tx=session.beginTransaction();
            Criteria c=session.createCriteria(UserDetails.class);
            c.add(Restrictions.eq("email", email));
            tx.commit();
            List list=c.list();
            Iterator it = list.iterator();

            session.close();
            sf.close();
            return it;
        }
	
}
