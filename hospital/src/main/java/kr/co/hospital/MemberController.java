package kr.co.hospital;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller

public class MemberController {
	
	@RequestMapping(value="/member/login")
	public String login()
	{
		return "/member/login";
	}

	@RequestMapping("/member/signup")
	public String signup()
	{
		return "/member/signup";
	}

	@RequestMapping("/member/modify")
	public String modify()
	{
		return "/member/modify";
	}

}
