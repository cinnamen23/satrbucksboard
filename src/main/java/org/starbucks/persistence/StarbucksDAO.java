package org.starbucks.persistence;

import java.util.List;

import org.starbucks.domain.Criteria;
import org.starbucks.domain.StarbucksVO;

public interface StarbucksDAO {
	
	public String getTime();
	
	public List<StarbucksVO> getlist(Criteria cri);
	
	public void create(StarbucksVO vo);

	public int gettotal();
	
	public StarbucksVO getone(StarbucksVO vo);
	
}
