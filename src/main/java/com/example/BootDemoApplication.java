package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class BootDemoApplication extends SpringBootServletInitializer {
 
   	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
      return application.sources(BootDemoApplication.class);
    }


	public static void main(String[] args)
	{
		
	//add PMD
	int a;
	int b;
		if(a==10)
		{
			if(b==20)
				System.out.println("PMD ");
			else
				System.out.println("20 ");
		}
		else
			System.out.println("10 ");
	System.out.println("Main is started");
		SpringApplication.run(BootDemoApplication.class, args);
	
	System.out.println("Main is Ended");
	}

}
