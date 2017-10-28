package org.starbucks.service;

import java.util.List;

import org.starbucks.domain.Criteria;
import org.starbucks.domain.StarbucksVO;

public interface StarbucksService {

	
	public List<StarbucksVO> showlist(Criteria cri);
	
	public void create(StarbucksVO vo);
	
	
}
