package org.starbucks.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.starbucks.domain.Criteria;
import org.starbucks.domain.StarbucksVO;
import org.starbucks.persistence.StarbucksDAO;

@Service
public class StarbucksServiceImpl implements StarbucksService {

	
	@Inject
	StarbucksDAO dao;
	
	@Override
	public List<StarbucksVO> showlist(Criteria cri) {
				return dao.getlist(cri);
	}

	
	@Override
	public void create(StarbucksVO vo) {
		dao.create(vo);
	}
	
	

}
