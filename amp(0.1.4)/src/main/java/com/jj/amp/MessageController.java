package com.jj.amp;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jj.dao.MemberDao;
import com.jj.dao.MessageDao;
import com.jj.vo.MemberVo;
import com.jj.vo.MessageVo;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MessageController {
	@Autowired
	MessageVo messageVo;
	@Autowired
	MessageDao messageDao;
	@Autowired
	MemberVo memberVo;
	@Autowired
	MemberDao memberDao;
	
	@RequestMapping(value = "/message", method = RequestMethod.GET)
	public String message(Locale locale, Model model) {
	
		
		return "academy/message/message";
	}
	@RequestMapping(value = "/message_room", method = RequestMethod.GET)
	public String messageRoom(Locale locale, Model model,HttpSession session) {
		MessageVo mesVo=new MessageVo();
		MemberVo memVo=new MemberVo();
		mesVo.setMember(Integer.parseInt(session.getAttribute("idx")+""));
		ArrayList<MessageVo> list=(ArrayList<MessageVo>)messageDao.selectRoom(mesVo);
		String room_member="";
		String [] room_member_arr;
		for(int i=0;i<list.size();i++) {
			room_member=list.get(i).getRoom_member().replace("@@", ",").replace("@", "");
			room_member_arr=room_member.split(",");
			room_member="<br>인원 : "+room_member_arr.length+"명 ( ";
				
					for(int j=0;j<room_member_arr.length;j++) {
						memVo.setIdx(Integer.parseInt(room_member_arr[j]));	
						ArrayList<MemberVo> list1=(ArrayList<MemberVo>)memberDao.selectAllByIdx(memVo);
						if(list1.size()!=0) {
							room_member+=list1.get(0).getName();
						}else {
							room_member+="탈퇴한 회원";
						}
							if(j!=room_member_arr.length-1) {
								room_member+=" , ";
							}else {
								room_member+=" )";
							}
					}
				
			list.get(i).setRoom_title(list.get(i).getRoom_title()+room_member);
		}
	
			mesVo=null;
			memVo=null;
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
		
		for(int i=0;i<list.size();i++) {
			int viewCount=0;
			if(list.get(i).getView().split("@@")[0].equals("")) {
				viewCount=0;
			}else {
				viewCount=list.get(i).getView().split("@@").length;
			}
			list.get(i).setView_count(viewCount);
		}
		
		model.addAttribute("list",list);
		return "academy/message/message_kit";
	}
	@RequestMapping(value = "/readMessage", method = RequestMethod.GET)
	@ResponseBody
	public String readMessage(Locale locale, Model model,int roomId,HttpSession session) {
			int memberIdx=Integer.parseInt(session.getAttribute("idx")+"");
			messageVo.setMember(memberIdx);
			messageVo.setRoom(roomId);
			ArrayList<MessageVo> list=(ArrayList<MessageVo>)messageDao.selectIdxView(messageVo);
		
			
			if(list.size()==0) {
				return "false";
			}else {
				for(int i=0;i<list.size();i++) {
					messageVo.setIdx(list.get(i).getIdx());
					messageVo.setView(list.get(i).getView().replace("@"+memberIdx+"@", ""));
					messageDao.updateView(messageVo);
				}
		
				
				
				return "true";
			}
					
	}
	
	
}
