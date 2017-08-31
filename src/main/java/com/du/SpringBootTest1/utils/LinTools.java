package com.du.SpringBootTest1.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.du.SpringBootTest1.config.properties.LinProperties;
@Component
public class LinTools {
	@Autowired
	private LinProperties linProperties;
	
	public boolean getKaptchaSwich(){
		return linProperties.getKaptchaSwich();
	}
	
}
