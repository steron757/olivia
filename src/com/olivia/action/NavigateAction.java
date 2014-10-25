package com.olivia.action;

/**
 * Navigation Menu Action
 * 
 * @author Gang.chen
 *
 */
public class NavigateAction extends BaseAction {

	private static final long serialVersionUID = 9183474797419399236L;

	public String home() {
		request.setAttribute("index", "1");
		System.out.println("Home!!");
		return SUCCESS;
	}

	public String product() {
		request.setAttribute("index", "2");
		System.out.println("Product!!");
		return SUCCESS;
	}

	public String about() {
		request.setAttribute("index", "3");
		System.out.println("About!!");
		return SUCCESS;
	}

	public String service() {
		request.setAttribute("index", "4");
		System.out.println("Service!!");
		return SUCCESS;
	}

	public String blog() {
		request.setAttribute("index", "5");
		System.out.println("Blog!!");
		return SUCCESS;
	}

	public String contact() {
		request.setAttribute("index", "6");
		System.out.println("Contact!!");
		return SUCCESS;
	}
}
