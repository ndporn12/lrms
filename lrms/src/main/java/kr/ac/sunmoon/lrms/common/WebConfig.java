package kr.ac.sunmoon.lrms.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

//@Configuration
public class WebConfig implements WebMvcConfigurer{
	@Autowired
	ManagerInterceptor managerInterceptor;
	
	@Autowired
	LrmsInterceptor lrmsInterceptor;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(lrmsInterceptor)
				.addPathPatterns("/**")
				.excludePathPatterns("/common/login");
		
		registry.addInterceptor(managerInterceptor)
				.addPathPatterns("/manager")
				.addPathPatterns("/record");
		
		WebMvcConfigurer.super.addInterceptors(registry);
	}


}
