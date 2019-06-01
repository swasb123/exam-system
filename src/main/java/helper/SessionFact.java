package helper;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class SessionFact {

	private static SessionFactory sf;
	private static ServiceRegistry serviceRegistry;

	public static SessionFactory getSessionFactory() {
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml").buildSessionFactory();
		serviceRegistry = new StandardServiceRegistryBuilder().applySettings(cfg.getProperties()).build();
		sf = cfg.buildSessionFactory(serviceRegistry);
		sf.openSession();
		//sf.close();
		System.out.println("build session factory-------------");
		return sf;
	}
	
	public static void shutdown() {
	      if (serviceRegistry != null) {
	         StandardServiceRegistryBuilder.destroy(serviceRegistry);
	      }
	   }

}
