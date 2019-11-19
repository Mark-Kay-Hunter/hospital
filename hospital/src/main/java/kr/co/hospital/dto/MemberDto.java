package kr.co.hospital.dto;

public class MemberDto 
{
	private String idno;
	private String passwd;
	private String passre;
	private String name;
	private String zip;
	private String adr1;
	private String adr2;
	private String ph1;
	private String ph3;
	private String em1;
	private String em2;
	
	public MemberDto() {}

	public MemberDto(String idno, String passwd, String passre, String name, String zip, String adr1, String adr2,
			String ph1, String ph3, String em1, String em2) {
		super();
		this.idno = idno;
		this.passwd = passwd;
		this.passre = passre;
		this.name = name;
		this.zip = zip;
		this.adr1 = adr1;
		this.adr2 = adr2;
		this.ph1 = ph1;
		this.ph3 = ph3;
		this.em1 = em1;
		this.em2 = em2;
	}

	public String getIdno() {
		return idno;
	}

	public void setIdno(String idno) {
		this.idno = idno;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getPassre() {
		return passre;
	}

	public void setPassre(String passre) {
		this.passre = passre;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getAdr1() {
		return adr1;
	}

	public void setAdr1(String adr1) {
		this.adr1 = adr1;
	}

	public String getAdr2() {
		return adr2;
	}

	public void setAdr2(String adr2) {
		this.adr2 = adr2;
	}

	public String getPh1() {
		return ph1;
	}

	public void setPh1(String ph1) {
		this.ph1 = ph1;
	}

	public String getPh3() {
		return ph3;
	}

	public void setPh3(String ph3) {
		this.ph3 = ph3;
	}

	public String getEm1() {
		return em1;
	}

	public void setEm1(String em1) {
		this.em1 = em1;
	}

	public String getEm2() {
		return em2;
	}

	public void setEm2(String em2) {
		this.em2 = em2;
	}
	
	
	

}
