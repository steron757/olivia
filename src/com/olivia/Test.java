package com.olivia;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.olivia.dao.ProductDao;
import com.olivia.dao.impl.ProductDaoImpl;
import com.olivia.model.Product;


public class Test {

	public static void main(String[] args) {
//
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
//		ProductDao pdao = (ProductDaoImpl) ctx.getBean("productDao");
//		List<Product> productList = (List<Product>) pdao.selectProduct();
//		for(Product p :productList){
//			System.out.println(p.getId());
//		}
	
		System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()));
	}
}
