package kr.co.hospital.dto;

public class BoardDto {
	private String id;
	private String wtitle;
	private String wname;
	private String wpwd;
	private String wcat;
	private String wcont;
	private String writeday;
	
	public BoardDto() {
		
	}

	public BoardDto(String id, String wtitle, String wname, String wpwd, String wcat, String wcont, String writeday) {
		super();
		this.id = id;
		this.wtitle = wtitle;
		this.wname = wname;
		this.wpwd = wpwd;
		this.wcat = wcat;
		this.wcont = wcont;
		this.writeday = writeday;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getWtitle() {
		return wtitle;
	}

	public void setWtitle(String wtitle) {
		this.wtitle = wtitle;
	}

	public String getWname() {
		return wname;
	}

	public void setWname(String wname) {
		this.wname = wname;
	}

	public String getWpwd() {
		return wpwd;
	}

	public void setWpwd(String wpwd) {
		this.wpwd = wpwd;
	}

	public String getWcat() {
		return wcat;
	}

	public void setWcat(String wcat) {
		this.wcat = wcat;
	}

	public String getWcont() {
		return wcont;
	}

	public void setWcont(String wcont) {
		this.wcont = wcont;
	}

	public String getWriteday() {
		return writeday;
	}

	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}

}
