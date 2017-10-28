package org.starbucks.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.starbucks.domain.Criteria;
import org.starbucks.domain.StarbucksVO;

@Repository
public class StarbucksDAOImpl implements StarbucksDAO {

	@Inject
	SqlSessionTemplate sess;
	
	static final String namespace = "org.starbucks.persistence.StarbucksDAO"; 

	@Override
	public String getTime() {
		
		return sess.selectOne(namespace + ".getTime");
	}

	@Override
	public List<StarbucksVO> getlist(Criteria cri) {
		
		return sess.selectList(namespace+".getlist",cri);
	}

	@Override
	public void create(StarbucksVO vo) {
		sess.insert(namespace+".create",vo);
		
	}

	@Override
	public int gettotal() {
		// TODO Auto-generated method stub
		return sess.selectOne(namespace+".gettotal");
	}

	@Override
	public StarbucksVO getone(StarbucksVO vo) {
		// TODO Auto-generated method stub
		return sess.selectOne(namespace+".getone", vo);
	}

}
