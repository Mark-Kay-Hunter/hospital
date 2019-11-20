package kr.co.hospital.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import kr.co.hospital.dto.MemberDto;

public class MemberDao 
{
	
	
	private Connection conn;

	
	public MemberDao() throws SQLException
	{
		String aa="jdbc:mysql://localhost:3307/hospital?useSSL=false";
		String bb="root";
		String cc="1234";
		conn = DriverManager.getConnection(aa,bb,cc);
		
	}

	public void signup(MemberDto memberdto) throws SQLException
	{
		
		String sql="insert into member(idno, passwd, passre, name, zip, adr1, adr2, ph, em)";
		sql=sql+" values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, memberdto.getIdno());
		pstmt.setString(2, memberdto.getPasswd());
		pstmt.setString(3, memberdto.getPassre());
		pstmt.setString(4, memberdto.getName());
		pstmt.setString(5, memberdto.getZip());
		pstmt.setString(6, memberdto.getAdr1());
		pstmt.setString(7, memberdto.getAdr2());
		pstmt.setString(8, memberdto.getPh());
		pstmt.setString(9, memberdto.getEm());
		
		pstmt.executeUpdate();
	}
	
	
	
}
