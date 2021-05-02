package com.jj.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jj.vo.ClassVo;


public class ClassDao {

	@Autowired
	SqlSession sqlSession;
	
	ClassDao(SqlSession sqlSession){
		this.sqlSession=sqlSession;
	}
	public List<ClassVo> selectIdx(ClassVo vo){
		return sqlSession.selectList("com.jj.mappers.ClassMapper.selectIdx",vo);
	}
	public List<ClassVo> selectName(ClassVo vo){
		return sqlSession.selectList("com.jj.mappers.ClassMapper.selectName",vo);
	}
}
