package com.olivia;

import com.olivia.action.BaseAction;


public class Test extends BaseAction {
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() throws Exception {
		System.out.println("OK!!!!!");
		return SUCCESS;
	}
	public static void main(String[] args) {
//
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
//		ProductDao pdao = (ProductDaoImpl) ctx.getBean("productDao");
//		List<Product> productList = (List<Product>) pdao.selectProduct();
//		for(Product p :productList){
//			System.out.println(p.getId());
//		}
	
	}
}
