package kr.co.hospital.dao;

import java.util.ArrayList;
import kr.co.hospital.dto.BoardDto;

public interface BoardDao {
	public void write(String wtitle, String wname, String wpwd, String wcat, String wcont);
	
	public ArrayList<BoardDto> list();
	
	public BoardDto content(String id);
	
	public void delete(String id);
	
	public BoardDto update(String id);
	
	public void update_ok(String wtitle, String wname, String wpwd, String wcat, String wcont, String id);
}
