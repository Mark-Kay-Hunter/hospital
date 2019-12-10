package kr.co.hospital.dto;


public class MemberDto 
{
	private String id;
	private String idno;
	private String passwd;
	private String passre;
	private String name;
	private String zip;
	private String adr1;
	private String adr2;
	private String ph;
	private String em;
	
	public MemberDto() {}

	public MemberDto(String id, String idno, String passwd, String passre, String name, String zip, String adr1,
			String adr2, String ph, String em) {
		super();
		this.id = id;
		this.idno = idno;
		this.passwd = passwd;
		this.passre = passre;
		this.name = name;
		this.zip = zip;
		this.adr1 = adr1;
		this.adr2 = adr2;
		this.ph = ph;
		this.em = em;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getPh() {
		return ph;
	}

	public void setPh(String ph) {
		this.ph = ph;
	}

	public String getEm() {
		return em;
	}

	public void setEm(String em) {
		this.em = em;
	}





}
