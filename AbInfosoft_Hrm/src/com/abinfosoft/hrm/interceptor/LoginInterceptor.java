package com.abinfosoft.hrm.interceptor;

import java.util.Map;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor  extends AbstractInterceptor {
	private static org.apache.log4j.Logger log = Logger.getLogger(LoginInterceptor.class);

        @Override
        public String intercept(ActionInvocation invocation) throws Exception {
                Map<String, Object> session = invocation.getInvocationContext().getSession();

                String loginId = (String) session.get("name");
               
                if (loginId == null) 
                {
                	log.trace("session expired");
                        return "login";
                        
                } 
                else 
                {
                        return invocation.invoke();
                }
        }
}