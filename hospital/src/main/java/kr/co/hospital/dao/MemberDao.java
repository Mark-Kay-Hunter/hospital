package kr.co.hospital.dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;



import kr.co.hospital.dto.MemberDto;




public class MemberDao 
{
	
	private JdbcTemplate template;
	
	
	  Calendar today = Calendar.getInstance();

	  String year = Integer.toString(today.get(Calendar.YEAR));
	  String year1 = year.substring(2,4);
	  String month = Integer.toString(today.get(Calendar.MONTH)+1);
	  String date = Integer.toString(today.get(Calendar.DATE));
	  
	  
	  
	  String idno1 = (year1+month+date);

	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	
	public MemberDao()
	{
		try {
			String aa="jdbc:mysql://localhost:3307/hospital?useSSL=false";
			String bb="root";
			String cc="1234";
			conn = DriverManager.getConnection(aa,bb,cc);
			
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
	}

	public String signup(MemberDto memberdto) throws SQLException
	{
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
	
	public MemberDto login(final MemberDto memberdto)
	{
		List<MemberDto> members = null; 
		
		String sql="select * from member where idno = ? and passwd = ?";
		
		members = template.query(sql, new Object[]{memberdto.getIdno(), memberdto.getPasswd()}, new RowMapper<MemberDto>() {

			@Override
			public MemberDto mapRow(ResultSet rs, int rowNum) throws SQLException {
				MemberDto mem = new MemberDto();
				mem.setIdno(rs.getString("Idno"));
				mem.setPasswd(rs.getString("Passwd"));
				return mem;
			}
			
		});
		
		if(members.isEmpty())
			return null;
		
		return members.get(0);
		
	}


	
}
