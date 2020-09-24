package org.ttcar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.ttcar.domain.AdminVO;
import org.ttcar.service.TicketService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
@RequestMapping("/ttcar")
public class AdminController {

	@PostMapping("/register")
	public void register(AdminVO vo,RedirectAttributes rttr) {
		log.info("Controller register executed");
	}
}