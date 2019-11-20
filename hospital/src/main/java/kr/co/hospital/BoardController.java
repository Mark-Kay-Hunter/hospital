package kr.co.hospital;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.co.hospital.dao.BoardDao;
import kr.co.hospital.dto.BoardDto;

/**
 * Handles requests for the application home page.
 */
@Controller

public class BoardController {
	@Autowired
	public SqlSession sqlSession;
	
	@RequestMapping("/board/write")
	public String write()
	{
		return "/board/write";
	}
	
	@RequestMapping("/board/write_ok")
	public String write_ok(BoardDto boarddto)
	{
		BoardDao boarddao = sqlSession.getMapper(BoardDao.class);
		boarddao.write(boarddto.getWtitle(), boarddto.getWname(), boarddto.getWpwd(), boarddto.getWcat(), boarddto.getWcont());
		return "redirect:/board/list";
	}

	@RequestMapping("/board/list")
	public String list()
	{
		return "/board/list";
	}	

}
