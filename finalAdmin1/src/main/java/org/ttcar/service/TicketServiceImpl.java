package org.ttcar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springbook.biz.ticket.TicketService;
import com.springbook.biz.ticket.TicketVO;

@Service("ticketService")
public class TicketServiceImpl implements TicketService{

	@Autowired
	private TicketDAOMybatis ticketDAO;
	
	@Override
	public List<TicketVO> getTicketList(TicketVO vo) {
		return ticketDAO.getTicketList(vo);
	}
}