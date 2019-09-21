package com.springioc;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.springioc.beans.Hello;

public class HelloSpring {
	public static void main(String[] args) {
		//Hello h = new Hello();
		//h.sayHello();
		ClassPathXmlApplicationContext content = new ClassPathXmlApplicationContext("spring/spring-ioc.xml");
		Hello h = (Hello) content.getBean("hellobean");
		h.sayHello();
	}
}
