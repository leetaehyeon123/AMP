package com.jj.amp;

import java.util.ArrayList;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jj.vo.AcademyVo;
import com.jj.vo.ClassVo;
import com.jj.vo.RoomVo;
import com.jj.dao.AcademyDao;
import com.jj.dao.ClassDao;
import com.jj.dao.RoomDao;



@Controller
public class ClassController {
	@Autowired
	ClassDao classDao;
	@Autowired
	ClassVo classVo;
	@Autowired
	AcademyDao academyDao;
	@Autowired
	AcademyVo academyVo;
	@Autowired
	RoomDao roomDao;
	@Autowired
	RoomVo roomVo;
	
	@RequestMapping(value = "/myclass", method = RequestMethod.GET)
	public String myclass(Locale locale, Model model) {
	
		
		return "academy/class/myclass";
	}
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Locale locale, Model model, int academyidx) {
		ArrayList<ClassVo> classlist=new ArrayList<ClassVo>();
		ArrayList<ClassVo> resultnamelist=new ArrayList<ClassVo>();
		
		System.out.println(academyidx);
		
		roomVo.setAcademy(academyidx);
		ArrayList<RoomVo> roomlist=(ArrayList<RoomVo>)roomDao.selectAcademy(roomVo);
		
		for(int i=0; i<roomlist.size(); i++) {
			
			classVo.setRoom(roomlist.get(i).getIdx());
			
			classlist=(ArrayList<ClassVo>)classDao.selectName(classVo);
			
				for(int j=0;j<classlist.size();j++) {
					resultnamelist.add(classlist.get(j));
				}
		}
		model.addAttribute("resultnamelist",resultnamelist);
		
		return "academy/class/registration";
	}
	
	@RequestMapping(value = "/rim", method = RequestMethod.GET)
	public String rim(Locale locale, Model model) {
	
		
		return "academy/class/rim";
	}
	@RequestMapping(value = "/classList", method = RequestMethod.GET)
	public String classList(Locale locale, Model model) {
	
		
		return "academy/class/classList";
	}
}
