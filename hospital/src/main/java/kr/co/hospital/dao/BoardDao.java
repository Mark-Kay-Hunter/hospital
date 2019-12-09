package kr.co.hospital.dao;

import java.util.ArrayList;
import kr.co.hospital.dto.BoardDto;

public interface BoardDao {
	public void write(String wtitle, String wname, String wpwd, String wcat, String wcont);
	
	public int list_cnt();
	
    public ArrayList<BoardDto> list(int start);
    
	public ArrayList<BoardDto> list2(String keyword, int start);
	
	public ArrayList<BoardDto> list3(String searchType, String keyword, int start);
	
	public BoardDto content(String id);
	
	public void read_num(String id);
	
	public void delete(String id);
	
	public BoardDto update(String id);
	
	public void update_ok(String wtitle, String wname, String wpwd, String wcat, String wcont, String id);

}
