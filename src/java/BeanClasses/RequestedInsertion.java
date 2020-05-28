package BeanClasses;

import java.util.HashSet;
import java.util.Iterator;

import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;


public class RequestedInsertion
{
	public static int insert(RequestedApplications ra,String email)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session= sf.openSession();
		
		Transaction t=session.beginTransaction();
               
		
                UserDetails su;
                su=(UserDetails) session.get(UserDetails.class, email);
                if(su!=null)
                {
                    Set s=su.getRequestapp();
                    s.add(ra);
                    su.setRequestapp(s);
                    session.persist(su);
                    t.commit();
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
	public static Iterator get(String email)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session= sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Criteria c=session.createCriteria(SignUp.class);
		c.add(Restrictions.eq("email", email));
		t.commit();
		List list=c.list();
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
        public static void saveExtra(ExtraInsert pa)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session= sf.openSession();
		
		Transaction t=session.beginTransaction();
                
                session.save(pa);
                t.commit();
                session.close();
                sf.close();
        }
        public static int uploadProject(String table,String email,int sno)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session= sf.openSession();
		
		Transaction t=session.beginTransaction();
                
                Query query,query2;
                query=session.createQuery("Insert into "+ table +" (projectName,synopsis,projectReport,projectPPt,aboutProject,cost,uploadedBy) select name,synopsis,report,ppt,about,cost,email from ExtraInsert where email=:email");
                query.setParameter("email", email);
                int i=query.executeUpdate();
                
                if(i>0)
                {
                    ExtraInsert ei;
                    ei=(ExtraInsert)session.get(ExtraInsert.class, email);
                    if(ei!=null)
                    {
                        session.delete(ei);
                    }
                    
                    query2=session.createQuery("update RequestedApplications set status= :status where sno=:id");
                    System.out.print(sno);
                    query2.setParameter("status", 3);
                    query2.setParameter("id", sno);
                    query2.executeUpdate();
                    t.commit();
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
        
        public static int getCost(String email, String name)
        {
                SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session= sf.openSession();
		
		Transaction t=session.beginTransaction();
		
                int cost=0;
                
		Criteria c=session.createCriteria(UserDetails.class);
		c.add(Restrictions.eq("email", email));
		t.commit();
                Iterator it=c.list().iterator();
                if(it.hasNext())
                {
                    UserDetails ud=(UserDetails) it.next();
                    Set s=ud.getRequestapp();
                    Iterator it2=s.iterator();
                    while(it2.hasNext())
                    {
                        RequestedApplications ra=(RequestedApplications) it2.next();
                        if(ra.getProjectname().equals(name))
                        {
                          cost=ra.getCost();
                        }
                    }
                }
            return cost;
        }
}
