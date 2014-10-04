package com.olivia.util;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.multipart.JakartaMultiPartRequest;

/**
 * 上传文件时候request的上传内容会变成空的处理办法
 * 
 * @author Gang.Chen
 * 
 */
public class RequestParseWrapper extends JakartaMultiPartRequest {

	public void parse(HttpServletRequest servletRequest, String saveDir)
			throws IOException {

	}
}
