package com.du.lin.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.du.lin.config.properties.LinProperties;
@Component
public class LinTools {
	@Autowired
	private LinProperties linProperties;
	
	public boolean getKaptchaSwich(){
		return linProperties.getKaptchaSwich();
	}
	
}
