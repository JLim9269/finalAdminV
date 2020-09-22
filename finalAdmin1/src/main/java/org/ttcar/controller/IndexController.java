package org.ttcar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.ttcar.domain.TicketVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/ttcar")
public class IndexController {
	
	@GetMapping("/index")
	public void home() {
		log.info("IndexController home");
	}
}