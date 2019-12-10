package kr.co.hospital.dao;


import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import kr.co.hospital.dto.MemberDto;



@Repository
public class MemberDao implements IMemberDao
{
	
	private JdbcTemplate template;
	private ComboPooledDataSource dataSource;
	
	/* idno에 날짜 부여하는 부분 */
	  Calendar today = Calendar.getInstance();

	  String year = Integer.toString(today.get(Calendar.YEAR));
	  String year1 = year.substring(2,4);
	  String month = Integer.toString(today.get(Calendar.MONTH)+1);
	  String date = Integer.toString(today.get(Calendar.DATE));
	  String idno1 = (year1+month+date);
	  /* idno에 날짜 부여하는 부분 끝 */
	  
	/* DB연결 */
	 private String driver = "oracle.jdbc.driver.OracleDriver";
	 private String aa="jdbc:mysql://localhost:3307/hospital?useSSL=false";
     private String bb="root";
     private String cc="1234";
	
     private Connection conn;

	
	public MemberDao()
	{
		try {
			dataSource = new ComboPooledDataSource();
			try {
				dataSource.setDriverClass(driver);
				dataSource.setJdbcUrl(aa);
				dataSource.setUser(bb);
				dataSource.setPassword(cc);
			} catch (PropertyVetoException e) {
				e.printStackTrace();
			}
			
			template = new JdbcTemplate();
			template.setDataSource(dataSource);
			
			conn = DriverManager.getConnection(aa,bb,cc);
			
		}
		
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	/* DB연결 끝 */

	@Override
	public String signup(MemberDto memberdto) throws SQLException /* 회원가입 */
	{    
		/* idno 조회하는 부분 */
		String sql="select right(idno,2) as num from member where idno like '"+idno1+"%'"+" order by id desc";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery();
		
		/* 기존 idno 조회 후, idno 부여하는 부분 */
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
	
	@Override
	public MemberDto login(final MemberDto memberdto) /* 로그인 */
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
	
	@Override
	public int memberUpdate(final MemberDto memberdto) {
		int result = 0;
		final String sql = "update member set passwd = ?, passre = ?, name = ?, zip = ?, adr1 = ?, adr2 = ?, ph = ?, em = ?";
		
		result = template.update(sql, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement pstmt) throws SQLException {
				pstmt.setString(1, memberdto.getPasswd());
				pstmt.setString(2, memberdto.getName());
				pstmt.setString(3, memberdto.getZip());
				pstmt.setString(4, memberdto.getAdr1());
				pstmt.setString(5, memberdto.getAdr2());
				pstmt.setString(6, memberdto.getPh());
				pstmt.setString(7, memberdto.getEm());
			}
		});
		return result;
	}


	
}
