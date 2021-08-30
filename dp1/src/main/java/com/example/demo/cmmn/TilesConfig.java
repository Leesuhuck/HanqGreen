package com.example.demo.cmmn;

import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

public class TilesConfig {
	
	@Bean
	public UrlBasedViewResolver viewResolver() {
		
		UrlBasedViewResolver tilesViewResolver = new UrlBasedViewResolver();
	
		tilesViewResolver.setViewClass(TilesView.class);
		tilesViewResolver.setOrder(1);
		
		return tilesViewResolver;
	}
	
	@Bean
	public TilesConfigurer tilesConfigurer() {
		
		TilesConfigurer tilesConfigurer = new TilesConfigurer();
		tilesConfigurer.setDefinitions(new String[] { "/WEB-INF/tiles/default-layout.xml" });
		
		return tilesConfigurer;
	}
}