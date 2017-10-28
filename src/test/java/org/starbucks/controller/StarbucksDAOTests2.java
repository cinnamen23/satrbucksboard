package org.starbucks.controller;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.starbucks.persistence.StarbucksDAO;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class StarbucksDAOTests2 {

	@Inject
	StarbucksDAO dao;
	
	private static Logger logger = Logger.getLogger(StarbucksDAOTests2.class);
	
	@Test
	public void getTime() {
		
		logger.info(dao.getTime());
	}

	@Test
	public void gettotal() {
		
		logger.info(dao.gettotal());
	}

	
}
