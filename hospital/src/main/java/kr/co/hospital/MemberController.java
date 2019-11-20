package kr.co.hospital;


import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hospital.command.MemberCommand;
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
	public String signup(MemberDto memberdto, Model model)
	{
		model.addAttribute("memberdto", memberdto);
		return "/member/signup";
	}
	
	@RequestMapping("/signup_ok")
	public String write_ok(MemberDto memberdto) throws SQLException
	{            // 폼입력값 => dto에 저장
		//dto에 있는 내용을 DB에 넣기
		
		// 실행할 Command 호출
		MemberCommand wc=new MemberCommand();
		wc.execute(memberdto);
		return "redirect:list";  //response.sendRedirect("list.jsp");
	}

	
	@RequestMapping("/member/signup_com")
	public String signup_com(MemberDto memberdto, Model model)
	{
		model.addAttribute("memberdto", memberdto);
		return "/member/signup_com";
	}
	
	@RequestMapping("/member/modify")
	public String modify()
	{
		return "/member/modify";
	}

}
