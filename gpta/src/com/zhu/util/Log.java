package com.zhu.util;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class Log {

	Logger log = Logger.getLogger(Log.class);

	public Log() {
		log.warn("log test");
	}

	public static void main(String[] args) {
		PropertyConfigurator.configure("log4j.properties");

	}

}
