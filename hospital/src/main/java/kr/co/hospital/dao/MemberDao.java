package kr.co.hospital.dao;

<<<<<<< HEAD
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import kr.co.hospital.dto.MemberDto;


public class MemberDao 
{
	  Calendar today = Calendar.getInstance();

	  String year = Integer.toString(today.get(Calendar.YEAR));
	  String year1 = year.substring(2,4);
	  String month = Integer.toString(today.get(Calendar.MONTH)+1);
	  String date = Integer.toString(today.get(Calendar.DATE));
	  
	  String idno1 = (year1+month+date);

	
	private Connection conn;

	
	public MemberDao() throws SQLException
	{
		String aa="jdbc:mysql://localhost:3307/hospital?useSSL=false";
		String bb="root";
		String cc="1234";
		conn = DriverManager.getConnection(aa,bb,cc);
		
	}

	public String signup(MemberDto memberdto) throws SQLException
	{
		/* memberdto.getIdno()="idno"+"memberdto.getId"; */
		String sql="select right(idno,2) as num from member where idno like '"+idno1+"%'"+" order by id desc";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery();
		
		if(rs.next()) 
		{
			idno1=idno1+String.format("%02d",(Integer.parseInt(rs.getString("num"))+1));
		}
		else
		{
			idno1=idno1+"00";
		}
		
		sql="insert into member(idno, passwd, passre, name, zip, adr1, adr2, ph, em)";
		sql=sql+" values(?,?,?,?,?,?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, idno1);
		pstmt.setString(2, memberdto.getPasswd());
		pstmt.setString(3, memberdto.getPassre());
		pstmt.setString(4, memberdto.getName());
		pstmt.setString(5, memberdto.getZip());
		pstmt.setString(6, memberdto.getAdr1());
		pstmt.setString(7, memberdto.getAdr2());
		pstmt.setString(8, memberdto.getPh());
		pstmt.setString(9, memberdto.getEm());
		
		pstmt.executeUpdate();
		return idno1;
	}
	
	
=======
public class MemberDao {

>>>>>>> refs/remotes/origin/master
}
