package org.ttcar.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.ttcar.domain.AdminVO;
import org.ttcar.domain.Criteria;
import org.ttcar.domain.PageDTO;
import org.ttcar.domain.ReplyPageDTO;
import org.ttcar.domain.ReplyVO;
import org.ttcar.service.AdminService;
import org.ttcar.service.ReplyService;
import org.ttcar.service.TicketService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@Controller
@RequestMapping("/ttcarAdmin")
public class AdminController {

	private AdminService adminService;
	private TicketService ticketService;
	private ReplyService replyService;
	
	//***Index***//
	
	@GetMapping("/index")
	public void home() {
		log.info("Get: index.jsp");
	}
	
	@GetMapping("/register")
	public void registerPage() {
		log.info("Get: register.jsp");
	}
	
	@PostMapping("/register")
	public String register(AdminVO vo,RedirectAttributes rttr) {
		log.info("Controller register executed(vo): "+vo);
		adminService.register(vo);
		rttr.addFlashAttribute("email",vo.getEmail());
		return "redirect:/ttcarAdmin/login";
	}
	
	@GetMapping("/login")
	public void loginPage() {
		log.info("Get: login.jsp");
	}
	
	@PostMapping("/login")
	public String login(AdminVO vo,HttpSession session) {
		if(vo.getEmail()==null||vo.getEmail().equals("")) {
			throw new IllegalArgumentException("Must write your Email");
		}
		
		AdminVO admin = adminService.getAdmin(vo);
		if(admin!=null) {
			session.setAttribute("adminEmail",admin.getEmail());
			log.info("Session Email: "+admin.getEmail());
			return "redirect:/ttcarAdmin/index";
		}else {
			return "redirect:/ttcarAdmin/login";
		}
	}
	
	@GetMapping("/logout")
	public void logoutPage() {
		log.info("Get: logout.jsp");
	}
	
	//***Ticket***//
	
	@GetMapping("/ticketList")
	public void ticketList(Criteria cri,Model model) {
		log.info("Controller ticketList executed");
		model.addAttribute("ticketList",ticketService.getTicketListWithPaging(cri));
		
		int total = ticketService.getTotal(cri);//페이지번호, 페이당 건수로 조회
		log.info("total:"+total);
		
		log.info("pageDTO:"+new PageDTO(cri, total));
		model.addAttribute("pageMaker",new PageDTO(cri, total));
	}
	
	@GetMapping("/ticketPage")
	public void getTicketPage(@RequestParam("tno")Long tno,@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("Controller ticketPage executed");
		model.addAttribute("ticketPage",ticketService.getTicketPage(tno));
	}
	
	//***Reply***//
	
    //댓글 등록
    @PostMapping(value="/new", consumes = "application/json"
    		                ,produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> create(@RequestBody ReplyVO vo){
    	log.info("create ReplyVO: "+vo);
    	//댓글 등록 처리
    	int insertCount = replyService.insert(vo);
    	
    	log.info("Reply Insert COUNT: "+ insertCount);
    	
    	return insertCount==1?new ResponseEntity<String>("success",HttpStatus.OK)
    			   : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
    	
    	
    }
    
    //댓글 리스트
    
    @GetMapping(value="/page/{tno}/{page}",
            produces= {MediaType.APPLICATION_ATOM_XML_VALUE,
          		             MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponseEntity<ReplyPageDTO> getList(@PathVariable("page") int page,
                                                      @PathVariable("tno") Long tno){
    	Criteria cri=new Criteria(page,10);

    	log.info("get Reply List tno: "+tno);

    	log.info("cri:"+cri);

    	ReplyPageDTO dto=replyService.getListWithPaging(cri, tno);
    	log.info("ReplyDTO: "+dto);
    	return new ResponseEntity<>(replyService.getListWithPaging(cri, tno),
	                                          HttpStatus.OK);
    }
    
    //댓글 보기
    @GetMapping(value="/{rno}",
    		              produces= {MediaType.APPLICATION_ATOM_XML_VALUE,
                                            MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponseEntity<ReplyVO> get(@PathVariable("rno") Long rno){
    	log.info("get :" + rno);
    	
    	return new ResponseEntity<ReplyVO>(replyService.read(rno),HttpStatus.OK);
    }
    
    
    //댓글 삭제
    @DeleteMapping(value="/{rno}",produces= {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> remove(@PathVariable("rno") Long rno){
    	log.info("remove: "+rno);
    	
    	return replyService.delete(rno)==1?
    			   new ResponseEntity<String>("success",HttpStatus.OK)
    	     :new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
    
    
    //댓글 수정
    @ RequestMapping(method = {RequestMethod.PUT,RequestMethod.PATCH},
    		value="/{rno}",
    		consumes = "application/json",
    		produces = {MediaType.TEXT_PLAIN_VALUE}
    		)
    public ResponseEntity<String> modify(@RequestBody ReplyVO  vo,
    		                                                    @PathVariable("rno") Long rno){
    	vo.setRno(rno);
    	log.info("rno: "+rno);
    	log.info("modify:"+vo);
    	
    	return replyService.update(vo)==1?
 			   new ResponseEntity<String>("success",HttpStatus.OK)
 	     :new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}