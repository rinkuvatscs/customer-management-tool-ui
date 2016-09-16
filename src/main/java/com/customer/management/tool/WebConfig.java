package com.customer.management.tool;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

@EnableWebMvc
@Configuration
public class WebConfig  extends WebMvcConfigurerAdapter  {
	@Autowired
	ServletContext servletContext;
	@Bean
	public UrlBasedViewResolver tilesViewResolver() {

		UrlBasedViewResolver tilesViewResolver = new UrlBasedViewResolver();
		tilesViewResolver.setViewClass(TilesView.class);
		tilesViewResolver.setOrder(0);
		return tilesViewResolver;
	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	@Bean
    public InternalResourceViewResolver viewResolver() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("WEB-INF/ui/");
        resolver.setSuffix(".jsp");
        resolver.setOrder(1);
        return resolver;
    }
	
	/* @Bean
	  public ViewResolver contentNegotiatingViewResolver(
	        ContentNegotiationManager manager) {
	    // Define the view resolvers
	    List<ViewResolver> resolvers = new ArrayList<ViewResolver>();

	    XmlViewResolver r1 = new XmlViewResolver();
	    r1.setLocation(new ServletContextResource(servletContext,
	            "/WEB-INF/spring/spreadsheet-views.xml"));
	    resolvers.add(r1);

	    InternalResourceViewResolver r2 = new InternalResourceViewResolver();
	    r2.setPrefix("WEB-INF/views");
	    r2.setSuffix(".jsp");
	    resolvers.add(r2);

	    // Create the CNVR plugging in the resolvers and the content-negotiation manager
	    ContentNegotiatingViewResolver resolver = new ContentNegotiatingViewResolver();
	    resolver.setViewResolvers(resolvers);
	    resolver.setContentNegotiationManager(manager);
	    return resolver;
	  }
*/	
	
	@Bean
	public TilesConfigurer tilesConfigurer() {

		TilesConfigurer tconf = new TilesConfigurer();
		tconf.setDefinitions(new String[] { "/WEB-INF/tiles/tiles.xml" });
		return tconf;

	}
}
