package org.zerock.restcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.service.BoardService;

@RestController
@RequestMapping("/rboard")
public class SearchBoardRestController {

	static Logger log = LoggerFactory.getLogger(SearchBoardRestController.class); 
	
	@Inject
	BoardService service;
	
	@RequestMapping(value = "/list")
	public List<BoardVO> listPage(Criteria cri) throws Exception{
		//page를 전송해주는놈
		log.info(cri.toString());
		List<BoardVO> boards = service.listCriteria(cri);
		/*
 		List<BoardVO> boards = new ArrayList<>();
		BoardVO b = new BoardVO(); 
		b.setBno(10);
		b.setContent("xxx");
		b.setTitle("yyy");
		boards.add(b);
		 */ 
		return boards; // mashall(마샬링)
	}
	@RequestMapping(value = "/listAll")
	public ResponseEntity<String> listAll(Criteria cri) throws Exception{
		//page를 전송해주는놈
		log.info(cri.toString());
	
		return new ResponseEntity<String>("SUCCESS", HttpStatus.OK); // mashall(마샬링)
	}
	
}
