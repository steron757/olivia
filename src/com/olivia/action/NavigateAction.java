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
		return SUCCESS;
	}

	public String product() {
		request.setAttribute("index", "2");
		return SUCCESS;
	}

	public String about() {
		request.setAttribute("index", "3");
		return SUCCESS;
	}

	public String service() {
		request.setAttribute("index", "4");
		return SUCCESS;
	}

	public String blog() {
		request.setAttribute("index", "5");
		return SUCCESS;
	}

	public String contact() {
		request.setAttribute("index", "6");
		return SUCCESS;
	}
	
	public String find() {
		
		
		request.setAttribute("index", "2");
		return SUCCESS;
	}
}
