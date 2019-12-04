package kr.co.hospital.member;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.hospital.dao.MemberDao;
import kr.co.hospital.dto.MemberDto;



public class MemberService {
	
	@Autowired
	MemberDao dao;
	
	public MemberDto memberSearch(MemberDto memberdto) {
		MemberDto dto = dao.login(memberdto);
		
		if(dto == null ) {
			System.out.println("Login Fail!!");
		} else {
			System.out.println("Login Success!!");
		}
		
		return dto;
	}
}
