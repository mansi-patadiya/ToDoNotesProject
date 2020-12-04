package com.mansi.todolist;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "com.mansi.todolist")
public class SpringConfiguration {
	/*@Bean
	public ToDoMaker geToDoMaker()
	{
		return new ToDoMaker();
	}*/
}
