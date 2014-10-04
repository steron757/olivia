package com.olivia.action;

public class SubjectAction extends BaseAction {
	private static final long serialVersionUID = 6565833934901953959L;
	
	/** Ö÷ÌâÄÚÈÝ */
	private String content1;

	public String add() {
		System.out.println(content1);
		return SUCCESS;
	}

	public String modify() {
		return SUCCESS;
	}

	public String delete() {
		return SUCCESS;
	}

	public String getContent1() {
		return content1;
	}

	public void setContent1(String content1) {
		this.content1 = content1;
	}
}
