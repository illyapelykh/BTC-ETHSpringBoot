package com.gmail.illya1pelykh;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class BtcEthAppApplication extends SpringBootServletInitializer {
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(BtcEthAppApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(BtcEthAppApplication.class, args);
	}
}
