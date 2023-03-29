
package com.mycompany.hibernatepractice;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernatePractice {

    public static void main(String[] args) {
        System.out.println("Project Started....");
        
        Configuration cfg = new Configuration();
        cfg.configure("hibernate.cfg.xml");
        
        SessionFactory factory= cfg.buildSessionFactory();
        
        factory.getCurrentSession();
        System.out.println(factory);
        
        try{
            
        }finally{
            factory.close();
        }
    }
}
