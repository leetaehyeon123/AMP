package com.jj.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jj.vo.MemberVo;
import com.jj.vo.MessageVo;
import com.jj.vo.TestVo;

public class MessageDao {

	@Autowired
	SqlSession sqlSession;
	
	MessageDao(SqlSession sqlSession){
		this.sqlSession=sqlSession;
	}

	public void sendMessage(MessageVo vo) {
		sqlSession.insert("com.jj.mappers.MessageMapper.sendMessage",vo);
		
	}
	public List<MessageVo> selectMessage(MessageVo vo){
		return sqlSession.selectList("com.jj.mappers.MessageMapper.selectMessage",vo);
	}
	
	public List<MessageVo> selectRoom(MessageVo vo){
		return sqlSession.selectList("com.jj.mappers.MessageMapper.selectRoom",vo);
	}
	public String selectRoomMember(MessageVo vo) {
		return sqlSession.selectOne("com.jj.mappers.MessageMapper.selectRoomMember",vo);
	}
	public List<MessageVo> selectIdxView(MessageVo vo){
		return sqlSession.selectList("com.jj.mappers.MessageMapper.selectIdxView",vo);
	}
	public void updateView(MessageVo vo){
		sqlSession.update("com.jj.mappers.MessageMapper.updateView",vo);
	}
	public int isMyRoom(MessageVo vo){
		return sqlSession.selectOne("com.jj.mappers.MessageMapper.isMyRoom",vo);
	}
}
