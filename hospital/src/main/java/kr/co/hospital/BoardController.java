package kr.co.hospital;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import kr.co.hospital.dao.BoardDao;
import kr.co.hospital.dto.BoardDto;
import kr.co.hospital.dto.MemberDto;


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
	public String list(Model model, HttpServletRequest request)
	{
		/*
		 * HttpSession session = request.getSession(); MemberDto menberdto =
		 * (MemberDto)session.getAttribute("memberdto");
		 */
		BoardDao boarddao = sqlSession.getMapper(BoardDao.class);
		// 페이지 이동 관련
		int start, page;
		if(request.getParameter("page") == null) {
			start = 0; // 첫 페이지에서 뒤로 넘어가지 않도록
			page = 1;
		}
		else {
			page = Integer.parseInt(request.getParameter("page"));
			start = (page-1)*10;
		}
		int tot_page = boarddao.list_cnt();
		// 페이지 관련
		int page_cnt = tot_page/10;
		if(tot_page%10 != 0)
			page_cnt = page_cnt + 1;
		
		// 검색 기능 관련
		String keyword = request.getParameter("keyword");
		String searchType = request.getParameter("searchType");
		ArrayList<BoardDto> list = null;
		if(searchType == null) /*기본 list*/
		   list = boarddao.list(start);
		else if(searchType.equals("0")) /*keyword만 있을때*/
			list = boarddao.list2(keyword, start);
		else /*searchType, keyword 둘다 존재*/ 
		    list = boarddao.list3(searchType, keyword, start);
		
		model.addAttribute("page_cnt", page_cnt);
		model.addAttribute("page", page);
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
