package kr.co.hospital;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
	public String list(Model model)
	{
		BoardDao boarddao = sqlSession.getMapper(BoardDao.class);
		ArrayList<BoardDto> list = boarddao.list();
		model.addAttribute("list", list);
		return "/board/list";
	}	
	
	@RequestMapping("/board/content")
	public String content(HttpServletRequest request, Model model)
	{
		BoardDao boarddao = sqlSession.getMapper(BoardDao.class);
		BoardDto boarddto = boarddao.content(request.getParameter("id"));
		model.addAttribute("boarddto", boarddto);
		return "/board/content";
	}
	
	@RequestMapping("/board/read_num")
	public String read_num(HttpServletRequest request) 
	{
		BoardDao boarddao = sqlSession.getMapper(BoardDao.class);
		boarddao.read_num(request.getParameter("id"));
		return "redirect:/board/content";
	}
	
	@RequestMapping("/board/delete")
	public String delete(HttpServletRequest request) 
	{
		BoardDao boarddao = sqlSession.getMapper(BoardDao.class);
		boarddao.delete(request.getParameter("id"));
		return "redirect:/board/list";
	}
	
	@RequestMapping("/board/update")
	public String update(HttpServletRequest request, Model model) 
	{
		BoardDao boarddao = sqlSession.getMapper(BoardDao.class);
		BoardDto boarddto = boarddao.update(request.getParameter("id"));
		model.addAttribute("boarddto", boarddto);
		return "/board/update";
	}
	
	@RequestMapping("/board/update_ok")
	public String update_ok(BoardDto boarddto) 
	{
		BoardDao boarddao = sqlSession.getMapper(BoardDao.class);
		boarddao.update_ok(boarddto.getWtitle(), boarddto.getWname(), boarddto.getWpwd(), boarddto.getWcat(), boarddto.getWcont(), boarddto.getId());
		return "redirect:/board/content?id="+boarddto.getId();
	}

}
