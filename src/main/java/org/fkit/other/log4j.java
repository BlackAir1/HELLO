package org.fkit.other;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;


public class log4j {
	Logger log=Logger.getLogger(log4j.class);
	public log4j(){
		PropertyConfigurator.configure("log4j.properties");
		log.warn("账号姓名手机号不匹配，找回失败！");
	}
}
