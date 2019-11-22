package kr.co.hospital;


import java.net.URLEncoder;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hospital.command.MemberCommand_signup;
import kr.co.hospital.dto.MemberDto;

/**
 * Handles requests for the application home page.
 */
@Controller

public class MemberController {
	
	@RequestMapping(value="/member/login")
	public String login(MemberDto memberdto, Model model)
	{
		model.addAttribute("memberdto", memberdto);
		return "/member/login";
	}
	
	@RequestMapping("/member/login_ok")
	public String member_ok(MemberDto memberdto, Model model) throws SQLException
	{
		MemberCommand_signup lg=new MemberCommand_signup();
	    String idno=lg.login(memberdto);
	    String passwd=memberdto.getPasswd();
		return "redirect:../home?idno="+idno+"&passwd="+passwd;
	}

	@RequestMapping("/member/signup")
	public String signup(MemberDto memberdto, Model model)
	{
		model.addAttribute("memberdto", memberdto);
		return "/member/signup";
	}
	
	@RequestMapping("/member/signup_ok")
	public String signup_ok(MemberDto memberdto,Model model) throws SQLException
	{            // 폼입력값 => dto에 저장
		//dto에 있는 내용을 DB에 넣기
		
		// 실행할 Command 호출
		MemberCommand_signup so=new MemberCommand_signup();
		String idno=so.execute(memberdto);
		//model.addAttribute("memberdto",memberdto);
		String name=URLEncoder.encode(memberdto.getName());
		return "redirect:/member/signup_com?idno="+idno+"&name="+name;
	}

	
	@RequestMapping("/member/signup_com")
	public String signup_com(HttpServletRequest request, Model model, MemberDto memberdto)
	{
		//model.addAttribute("memberdto", memberdto);
		String idno=request.getParameter("idno");
		String name=request.getParameter("name");
		model.addAttribute("idno", idno);
		model.addAttribute("name", name);
		return "/member/signup_com";
	}
	
	@RequestMapping("/member/modify")
	public String modify()
	{
		return "/member/modify";
	}

}
