package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class BootDemoApplication extends SpringBootServletInitializer //{
 
   	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
      return application.sources(BootDemoApplication.class);
    }


	public static void main(String[] args)
	{
		String a=null;
		a.substring(0,2);	//create NP 
	System.out.println("Main is started");
		SpringApplication.run(BootDemoApplication.class, args);
	
	System.out.println("Main is Ended");
	}

}
