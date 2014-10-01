package com.olivia.util.filter;

import java.io.IOException;
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

	ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
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
	    String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	    System.out.println("------------------User IP: " + ip + "----, Time:"+ time +"------------");
		User user = new User();
		user.setIp(ip);
		throw new Exception();
//		udao.insertIP(user);//TODO
	}
}
