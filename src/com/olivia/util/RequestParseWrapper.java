package com.olivia.util;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.multipart.JakartaMultiPartRequest;

/**
 * �ϴ��ļ�ʱ��request���ϴ����ݻ��ɿյĴ���취
 * 
 * @author Gang.Chen
 * 
 */
public class RequestParseWrapper extends JakartaMultiPartRequest {

	public void parse(HttpServletRequest servletRequest, String saveDir)
			throws IOException {

	}
}
