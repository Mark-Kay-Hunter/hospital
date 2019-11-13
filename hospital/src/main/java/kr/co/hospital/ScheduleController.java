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

public class ScheduleController {
	
	@RequestMapping("/schedule/check")
	public String check()
	{
		return "/schedule/check";
	}

	@RequestMapping("/schedule/change")
	public String change()
	{
		return "/schedule/change";
	}

	@RequestMapping("/schedule/cancel")
	public String cancel()
	{
		return "/schedule/cancel";
	}	

}
