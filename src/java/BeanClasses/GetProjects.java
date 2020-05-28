package BeanClasses;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class GetProjects
{
	public  Iterator android()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsAndroid order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator ajax()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsAjax order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator c()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsC order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator cplus()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsCplus order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator IOS()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsIOS order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator j2ee()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsJ2EE order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator java()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsJava order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator kotlin()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsKotlin order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator perl()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsPerl order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator php()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsPHP order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator python()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsPython order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator ruby()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsRuby order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator template()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsTemplates order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public  Iterator vbnet()
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		
		Session session=sf.openSession();
		
		Transaction t=session.beginTransaction();
		
		Query query = session.createQuery("from ProjectsVbNet order by downloads DESC");
		
		t.commit();
		List list=query.list();
		
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public static Iterator detail(String table , int pid)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
			
		Transaction t=session.beginTransaction();
		
            	Query query;
                query =session.createQuery("from "+ table.trim() +" where projectId= :name");
                query.setParameter("name",pid);

                t.commit();
                List list=query.list();
                Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
	public static Iterator search(String name,String table)
	{
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
			
		Transaction t=session.beginTransaction();
		
		Query query;
		
		query=session.createQuery("from "+ table.trim() +" where projectName LIKE :name");
		query.setParameter("name","%"+ name +"%");
                
                t.commit();
		List list=query.list();
		Iterator it=list.iterator();
		
		session.close();
		sf.close();
		return it;
	}
        public static List searchall(String name)
        {
            List<List> list=new ArrayList();
            
                SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
			
		Transaction t=session.beginTransaction();
		
		Query query;
		
		query=session.createQuery("from ProjectsAjax where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list1=query.list();
                list.add(list1);
                
                query=session.createQuery("from  ProjectsAndroid where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");

		List list2=query.list();
                list.add(list2);

                query=session.createQuery("from ProjectsC where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list3=query.list();
                list.add(list3);
                
                query=session.createQuery("from ProjectsCplus where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list4=query.list();
                list.add(list4);
                
                query=session.createQuery("from ProjectsIOS where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list5=query.list();
                list.add(list5);
                
                query=session.createQuery("from ProjectsJ2EE where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list6=query.list();
                list.add(list6);
                
                query=session.createQuery("from ProjectsJava where projectName LIKE :name ");
                query.setParameter("name", "% "+name+" %");
                
		List list7=query.list();
                list.add(list7);
                
                query=session.createQuery("from ProjectsKotlin where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list8=query.list();
                list.add(list8);
                
                query=session.createQuery("from ProjectsPHP where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list9=query.list();
                list.add(list9);
                
                query=session.createQuery("from ProjectsPerl where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list10=query.list();
                list.add(list10);
                
                query=session.createQuery("from ProjectsPython where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list11=query.list();
                list.add(list11);
                
                query=session.createQuery("from ProjectsRuby where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list12=query.list();
                list.add(list12);
                
                query=session.createQuery("from ProjectsRubyOnRails where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list13=query.list();
                list.add(list13);
                
                query=session.createQuery("from ProjectsVbNet where projectName LIKE :name ");
                query.setParameter("name", "%"+ name +"%");
                
		List list14=query.list();
                list.add(list14);
                
                t.commit();
		session.close();
		sf.close();
		
                return list;
        }
        
        public static Iterator listproject(String table)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
			
		Transaction t=session.beginTransaction();
		
		Query query;
		
		query=session.createQuery("from "+table );
                
                t.commit();
		List list=query.list();
		Iterator it=list.iterator();
		session.close();
		sf.close();
		return it;
        }
}