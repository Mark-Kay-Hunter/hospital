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

public class ReservationController {
	
	@RequestMapping("/reservation/select")
	public String select()
	{
		return "/reservation/select";
	}

	@RequestMapping("/reservation/inspection")
	public String inspection()
	{
		return "/reservation/inspection";
	}

	@RequestMapping("/reservation/doctor")
	public String doctor()
	{
		return "/reservation/doctor";
	}

}
