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

}
