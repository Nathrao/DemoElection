package com.dreamworth.util;

import java.io.Serializable;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public final class HibernateUtil implements Serializable,Cloneable {
	private HibernateUtil(){}
	
	private static volatile SessionFactory factory;
	
	public static SessionFactory getSessionFactory()
	{
		
		if(factory==null)
		{
			synchronized (SessionFactory.class)
			{
				if(factory==null)
				{
					Configuration configuration=new Configuration();
					configuration.configure("com/dreamworth/config/hibernate.cfg.xml");
					factory=configuration.buildSessionFactory();
				}
				
			}
			
		}
		
		return factory;
	}
	
	protected Object readResolve()
	{
		return factory;
	}
	
	protected Object clone()throws CloneNotSupportedException{
		throw new CloneNotSupportedException();
	}

}
