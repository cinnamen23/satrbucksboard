package org.starbucks.controller;



import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.starbucks.domain.Criteria;
import org.starbucks.domain.PageMaker;
import org.starbucks.domain.StarbucksVO;
import org.starbucks.persistence.StarbucksDAO;
import org.starbucks.service.StarbucksService;

@Controller
@RequestMapping("/star/*")
public class Starbuckscontroller {

	@Inject
	StarbucksService service;
	@Inject
	StarbucksDAO dao;
	
	private static final Logger logger = Logger.getLogger(Starbuckscontroller.class);

  @GetMapping("/list")
  public void getPage(Model model,Criteria cri)throws Exception{
	  
	  
	  List<StarbucksVO> list = service.showlist(cri);
	  
	  PageMaker pageMaker = new PageMaker(cri, dao.gettotal());
	  
	  model.addAttribute("list",list);
	  model.addAttribute("pageMaker",pageMaker);
	  model.addAttribute("cri",cri);
	  
  }
  
  @GetMapping("/write")
public void create(){
	  
  }	  
	
  @PostMapping("write")
  public String recreate(StarbucksVO vo){
	  
	  System.out.println("write post....");
	  System.out.println(vo);
	  
	  service.create(vo);
	  
	  return "redirect:/star/list?msg=success";
  }
  
  @GetMapping("/sub")
  public void showsub(Model model,StarbucksVO vo){
	  
	  logger.info("get sub...............");
	  logger.info(vo);
	  
	  
	  model.addAttribute("vo", dao.getone(vo));
  }
  
	
}
