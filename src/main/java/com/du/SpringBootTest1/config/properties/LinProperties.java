package com.du.SpringBootTest1.config.properties;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;


@Component
@ConfigurationProperties(prefix = LinProperties.PREFIX)
public class LinProperties {
	public static final String PREFIX = "lin";
	
	private boolean KaptchaSwich = false;

	public boolean getKaptchaSwich() {
		return KaptchaSwich;
	}

	public void setKaptchaSwich(boolean kaptchaSwich) {
		KaptchaSwich = kaptchaSwich;
	}
	
	
	
}
