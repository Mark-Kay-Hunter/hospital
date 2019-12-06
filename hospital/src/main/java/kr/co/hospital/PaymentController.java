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

public class PaymentController {
	
	@RequestMapping("/payment/cost")
	public String cost()
	{
		return "/payment/cost";
	}

	@RequestMapping("/payment/pay")
	public String pay()
	{
		return "/payment/pay";
	}

}
