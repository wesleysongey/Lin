package com.du.lin.config.properties;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;


@Component
//@ConfigurationProperties(prefix = LinProperties.PREFIX)
public class LinProperties {
	public static final String PREFIX = "lin";
	@Value("${lin.kaptchaswich}")
	private boolean kptchaswich = false;

	public boolean isKptchaswich() {
		return kptchaswich;
	}

	public void setKptchaswich(boolean kptchaswich) {
		this.kptchaswich = kptchaswich;
	}


	
	
	
}
