package com.help;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {
	
		private static SessionFactory factory;
		
		public static SessionFactory getFactory()
		{
			if(factory==null)
			{
				factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
				return factory;
			}
			return factory;
		}
		public static void closeSessionFactory()
		{
			if(factory!=null)
			{
				factory.close();
			}
		}
	
}
