package com.ssi;

import javax.servlet.ServletContext;

public class Test {

	ServletContext context;
	
	public Test(ServletContext context){
		this.context=context;	
	}
	
	
	public void getData(){
		String s=context.getInitParameter("email");
	}
	
	
}
