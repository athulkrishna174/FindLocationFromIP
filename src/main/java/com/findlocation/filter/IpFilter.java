package com.findlocation.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;


@WebFilter("/findLocation")
public class IpFilter implements Filter {
	
	private static final String IPREGEX = "^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\\.(?!$)|$)){4}$";
	
	private static final Pattern PATTERN = Pattern.compile(IPREGEX);

	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		try{
			String ipAddress = req.getParameter("ipAddress");
			if(isValidIp(ipAddress)) {
				chain.doFilter(request, response);
			}
			else {
				PrintWriter out = response.getWriter();
				out.println("Invalid IP Address");
			}
		}catch (Exception e) {
			PrintWriter out = response.getWriter();
			out.println("Invalid IP Address");
		}

	}
	
	public static boolean isValidIp(String ipAddress) {
        Matcher matcher = PATTERN.matcher(ipAddress);
        return matcher.matches();
    }

}
