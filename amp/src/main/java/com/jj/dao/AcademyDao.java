package com.jj.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.jj.vo.AcademyVo;


public class AcademyDao {

	@Autowired
	SqlSession sqlSession;
	
	AcademyDao(SqlSession sqlSession){
		this.sqlSession=sqlSession;
	}
	public List<AcademyVo> selectIdxById(AcademyVo vo){
		return sqlSession.selectList("com.jj.mappers.AcademyMapper.selectIdxById",vo);
	}
	public List<AcademyVo> selectTag(AcademyVo vo){
		return sqlSession.selectList("com.jj.mappers.AcademyMapper.selectTag",vo);
	}
	
	
}
