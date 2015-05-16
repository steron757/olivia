package com.olivia.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class CommonUtil {

	public static void response(HttpServletResponse response, String message){
        response.setContentType("text/xml");
        response.setHeader("Cache-Control", "no-cache");
        PrintWriter out;
		try {
			out = response.getWriter();
	        out.write(message);
	        out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
