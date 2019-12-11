package kr.co.hospital;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.hospital.dto.MemberDto;
import kr.co.hospital.member.MemberService;
import kr.co.hospital.dto.MemberDto;

/**
 * Handles requests for the application home page.
 */
@Controller


public class MainController {
	
	@Autowired
	MemberService service;
	
	@RequestMapping(value="/main/main")
	public ModelAndView main(HttpServletRequest request)
	{
		/*
		 * MemberDto dto = service.memberSearch(memberdto); session.getAttribute("dto");
		 * String idno = request.getParameter("idno"); String name =
		 * request.getParameter("name");
		 * 
		 * model.addAttribute("idno", idno); model.addAttribute("name", name);
		 */
		
		HttpSession session = request.getSession();
		MemberDto memberdto = (MemberDto) session.getAttribute("memberdto");
		
		if(memberdto == null)
		{
			return null;
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("memAft", service.memberSearch(memberdto));
		
		mav.setViewName("/main/main");
		
		return mav;
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