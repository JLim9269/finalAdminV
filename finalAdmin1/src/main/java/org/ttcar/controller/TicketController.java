package org.ttcar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.ttcar.domain.TicketVO;
import org.ttcar.service.TicketService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
@RequestMapping("/ticket")
public class TicketController {

	private TicketService service;
	
	@GetMapping("/ticketList")
	public void ticketList(Model model) {
		log.info("Controller ticketList executed");
		model.addAttribute("ticketList",service.getTicketList());
		log.info(service.getTicketList()); //it works
	}
	
	@GetMapping("/ticketPage")
	public void getTicketPage(@RequestParam("tno")Long tno,Model model) {
		log.info("Controller ticketPage executed");
		model.addAttribute("ticketPage",service.getTicketPage(tno));
	}
}