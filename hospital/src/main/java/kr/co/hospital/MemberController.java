package kr.co.hospital;


import java.net.URLEncoder;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hospital.command.MemberCommand;
import kr.co.hospital.dto.MemberDto;
import kr.co.hospital.member.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/member")



public class MemberController {
	
	@Autowired
	MemberService service;
	
	@RequestMapping(value="/login")
	public String login(MemberDto memberdto)
	{
		return "/member/login";
	}
	
	@RequestMapping("/login_ok")
	public String member_ok(MemberDto memberdto,  HttpSession session) 
	{
		MemberDto dto = service.memberSearch(memberdto);
		if(dto == null)
			return "/member/login";
		
		session.setAttribute("memberdto", dto);
		/*
		 * MemberCommand lg=new MemberCommand(); String idno=lg.login(memberdto); String
		 * passwd=memberdto.getPasswd();
		 */
		/* return "redirect:../home?idno="+idno+"&passwd="+passwd; */
		
		return "/member/login_ok";
	}

	@RequestMapping("/signup")
	public String signup(MemberDto memberdto, Model model)
	{
		model.addAttribute("memberdto", memberdto);
		return "/member/signup";
	}
	
	@RequestMapping("/signup_ok")
	public String signup_ok(MemberDto memberdto,Model model) throws SQLException
	{            // 폼입력값 => dto에 저장
		//dto에 있는 내용을 DB에 넣기
		
		// 실행할 Command 호출
		MemberCommand so=new MemberCommand();
		String idno=so.execute(memberdto);
		//model.addAttribute("memberdto",memberdto);
		String name=URLEncoder.encode(memberdto.getName());
		return "redirect:/member/signup_com?idno="+idno+"&name="+name;
	}

	
	@RequestMapping("/signup_com")
	public String signup_com(HttpServletRequest request, Model model, MemberDto memberdto)
	{
		//model.addAttribute("memberdto", memberdto);
		String idno=request.getParameter("idno");
		String name=request.getParameter("name");
		model.addAttribute("idno", idno);
		model.addAttribute("name", name);
		return "/member/signup_com";
	}
	
	@RequestMapping("/modify")
	public String modify()
	{
		return "/member/modify";
	}

}
