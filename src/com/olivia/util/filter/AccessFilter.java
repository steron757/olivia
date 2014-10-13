package com.olivia.util.filter;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.olivia.dao.UserDao;
import com.olivia.dao.impl.UserDaoImpl;
import com.olivia.model.User;

public class AccessFilter implements Filter {

	ApplicationContext ctx = new ClassPathXmlApplicationContext(
			"applicationContext.xml");
	UserDao udao = (UserDaoImpl) ctx.getBean("userDao");

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		try {
			ipRecord(request);
		} catch (Exception e) {
			throw new ServletException(e);
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

	private void ipRecord(ServletRequest request) throws Exception {
		String ip = null;
		if (((HttpServletRequest) request).getHeader("x-forwarded-for") == null) {
			ip = request.getRemoteAddr();
		} else {
			ip = ((HttpServletRequest) request).getHeader("x-forwarded-for");
		}
		String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(new Date());
		System.out.println("------------------User IP: " + ip + "----, Time:"
				+ time + "------------");
		User user = new User();
		user.setIp(ip);
		String belongcity = null;
		belongcity = getIPAddress(ip);
		user.setBelongcity(belongcity);
		if (!"127.0.0.1".equals(ip)) {
			udao.insertIP(user);// TODO
		}
	}

	private String getIPAddress(String ip){
		URL url = null;
		try {
			url = new URL("http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=text&ip=" + ip);
		} catch (MalformedURLException e) {
			System.out.println("get ipaddress error: " + e.getMessage());
			return e.getMessage();
		}

		String str;
		StringBuffer result = new StringBuffer();
		try {
			InputStreamReader isr = new InputStreamReader(url.openStream());
			BufferedReader br = new BufferedReader(isr);
			while ((str = br.readLine()) != null) {
				result.append(str);
				System.out.println(str);
			}
			br.close();
			isr.close();
		} catch (IOException e) {
			return e.getMessage();
		}
		return result.toString();
	}
	
}
