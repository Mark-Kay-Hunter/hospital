package kr.co.hospital;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hospital.dto.MemberDto;

import kr.co.hospital.dto.MemberDto;

/**
 * Handles requests for the application home page.
 */
@Controller


public class MainController {
	
	@RequestMapping(value="/main/main")
	public String main(HttpServletRequest request, Model model, MemberDto memberdto)
	{
		String idno = request.getParameter("idno");
		String name = request.getParameter("name");
		
		model.addAttribute("idno", idno);
		model.addAttribute("name", name);
		
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