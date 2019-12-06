package kr.co.hospital.command;

import java.sql.SQLException;

import kr.co.hospital.dao.MemberDao;
import kr.co.hospital.dto.MemberDto;

public class MemberCommand {
	public String execute(MemberDto memberdto) throws SQLException {
		MemberDao dao = new MemberDao();
		String idno = dao.signup(memberdto);
		return idno;
	}
	 
}
