package com.jj.amp;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jj.dao.MemberDao;
import com.jj.vo.MemberVo;
import com.jj.dao.AcademyDao;
import com.jj.vo.AcademyVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	@Autowired
	MemberDao memberDao;
	@Autowired
	MemberVo memberVo;
	@Autowired
	AcademyDao academyDao;
	@Autowired
	AcademyVo academyVo;
	
	@RequestMapping(value = {"/","/main"})
	public String sitemain(Locale locale, Model model) {
	
		
		return "site/main/main";
	}
	
	@RequestMapping(value = "/academyMain", method = RequestMethod.GET)
	public String academy(Locale locale, Model model) {
	
		
		return "academy/main/academyMain";
	}
	@RequestMapping(value = "/topBar")
	public String topBar(Locale locale, Model model,HttpSession session) {
		if(session.getAttribute("idx")!=null) {
			System.out.println(session.getAttribute("idx")+"");
			memberVo.setIdx(Integer.parseInt(session.getAttribute("idx")+""));
			ArrayList<MemberVo> list= (ArrayList<MemberVo>) memberDao.selectAllByIdx(memberVo);
			model.addAttribute("name",list.get(0).getName());
		}
		
		return "site/main/topBar";
	}
	
	@RequestMapping(value = "/tagSearch", method = RequestMethod.GET)
	public String tagsearch(Locale locale, Model model, String keyword) {
	
		System.out.println(keyword);
		academyVo.setKeyword(keyword);
		ArrayList<AcademyVo> list=(ArrayList<AcademyVo>)academyDao.selectTag(academyVo);
		model.addAttribute("list",list);
		
		return "site/main/tagsearch";
	}
	
	@RequestMapping(value = "/academyMain_topBar")
	public String academyMain_topBar(Locale locale, Model model,HttpSession session) {
		if(session.getAttribute("idx")!=null) {
			System.out.println(session.getAttribute("idx")+"");
			memberVo.setIdx(Integer.parseInt(session.getAttribute("idx")+""));
			ArrayList<MemberVo> list= (ArrayList<MemberVo>) memberDao.selectAllByIdx(memberVo);
			model.addAttribute("name",list.get(0).getName());
		}
		
		return "academy/main/academyMain_topBar";
	}
}
