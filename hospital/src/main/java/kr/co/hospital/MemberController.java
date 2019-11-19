package kr.co.hospital;


import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hospital.dto.MemberDto;

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
	
	@RequestMapping("/member/signup_com")
	public String signup_com(MemberDto memberdto, HttpServletRequest request, Model model) throws UnsupportedEncodingException
	{
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String idno=request.getParameter("idno");
		model.addAttribute("value", name);
		model.addAttribute("value",idno);
		return "/member/signup_com";
	}

	@RequestMapping("/member/modify")
	public String modify()
	{
		return "/member/modify";
	}

}
