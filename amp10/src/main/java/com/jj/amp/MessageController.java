package com.jj.amp;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jj.dao.MessageDao;
import com.jj.vo.MessageVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MessageController {
	@Autowired
	MessageVo messageVo;
	@Autowired
	MessageDao messageDao;
	
	
	@RequestMapping(value = "/message", method = RequestMethod.GET)
	public String message(Locale locale, Model model) {
	
		
		return "academy/message/message";
	}
	@RequestMapping(value = "/message_room", method = RequestMethod.GET)
	public String messageRoom(Locale locale, Model model,HttpSession session) {
		messageVo.setMember(Integer.parseInt(session.getAttribute("idx")+""));
		ArrayList<MessageVo> list=(ArrayList<MessageVo>)messageDao.selectRoom(messageVo);
		
	
		model.addAttribute("list",list);
		return "academy/message/message_room";
	}
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(Locale locale, Model model) {
		
		
		return "academy/message/notice";
	}
	@RequestMapping(value = "/message_kit", method = RequestMethod.GET)
	public String messagekit(Locale locale, Model model,String roomId) {
		messageVo.setRoom(Integer.parseInt(roomId));
		ArrayList<MessageVo> list=(ArrayList<MessageVo>)messageDao.selectMessage(messageVo);
		
		model.addAttribute("list",list);
		return "academy/message/message_kit";
	}
	@RequestMapping(value = "/readMessage", method = RequestMethod.GET)
	public void readMessage(Locale locale, Model model,int roomId,HttpSession session) {
			messageVo.setMember(Integer.parseInt(session.getAttribute("idx")+""));
			messageVo.setRoom(roomId);
			
			
			
	}
	
	
}
