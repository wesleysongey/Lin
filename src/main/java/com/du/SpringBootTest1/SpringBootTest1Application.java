package com.du.SpringBootTest1;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@MapperScan("com.du.SpringBootTest1.dao")
@SpringBootApplication
public class SpringBootTest1Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootTest1Application.class, args);
	}
}
