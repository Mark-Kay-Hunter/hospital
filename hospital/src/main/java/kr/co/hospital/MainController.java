package kr.co.hospital;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

}