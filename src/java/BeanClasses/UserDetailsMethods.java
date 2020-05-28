package BeanClasses;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;


public class UserDetailsMethods {
    public static int checkuser(String email)
        {
                SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session= sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Criteria c=session.createCriteria(UserDetails.class);
		c.add(Restrictions.eq("email", email));
		t.commit();
		List list=c.list();
		Iterator it=list.iterator();
                if(it.hasNext())
                {
                        session.close();
                        sf.close();
                        return 0;
                }
                else
                {
                        session.close();
                        sf.close();
                        return 1;
                }
        }
    
        public static Iterator getemail(String email)
        {
                SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session= sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Criteria c=session.createCriteria(UserDetails.class);
		c.add(Restrictions.eq("email", email));
		t.commit();
		List list=c.list();
		Iterator it=list.iterator();
                return it;
        }
        
        public static int insert(UserDetails ud)
        {
                SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session= sf.openSession();
		
		Transaction t=session.beginTransaction();
                
                session.save(ud);
                t.commit();
                
                session.close();
                sf.close();
            return 1;
        }
        public static int subscrib(subscribe s)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction t=session.beginTransaction();
            
            session.save(s);
            t.commit();
            session.close();
            sf.close();
            return 1;
        }
}
