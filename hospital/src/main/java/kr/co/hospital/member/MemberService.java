package kr.co.hospital.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hospital.dao.MemberDao;
import kr.co.hospital.dto.MemberDto;


@Service
public class MemberService implements IMemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
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
