package kr.co.hospital.dao;

import java.sql.SQLException;

import kr.co.hospital.dto.MemberDto;

public interface IMemberDao {
	
	
	MemberDto login(MemberDto memberdto);
	String signup(MemberDto memberdto) throws SQLException;
	int memberUpdate(MemberDto memberdto);

}
