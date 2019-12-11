package kr.co.hospital;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller

public class MainController {
	
	@RequestMapping(value="/main/main")
	public String main()
	{
		return "/main/main";
	}
	
	@RequestMapping(value="/main/index")
	public String index()
	{
		return "/main/index";
	}
	
	@RequestMapping(value="/main/sorry")
	public String sorry()
	{
		return "/main/sorry";
	}
	
	@RequestMapping(value="/main/news1")
	public String news1()
	{
		return "/main/news1";
	}
	
	@RequestMapping(value="/main/news2")
	public String news2()
	{
		return "/main/news2";
	}
	
	@RequestMapping(value="/main/news3")
	public String news3()
	{
		return "/main/news3";
	}
	
	@RequestMapping(value="/main/news4")
	public String news4()
	{
		return "/main/news4";
	}
	
	

}
