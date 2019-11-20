package kr.co.hospital.dao;

import java.util.ArrayList;
import kr.co.hospital.dto.BoardDto;

public interface BoardDao {
	public void write(String wtitle, String wname, String wpwd, String wcat, String wcont);
	
	public ArrayList<BoardDto> list();
}
