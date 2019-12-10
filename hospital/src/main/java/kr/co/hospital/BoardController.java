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

public class BoardController {
	
	@RequestMapping("/board/write")
	public String write()
	{
		return "/board/write";
	}

	@RequestMapping("/board/list")
	public String list()
	{
		return "/board/list";
	}	

}
