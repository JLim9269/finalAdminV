package org.ttcar.service;
  
import java.util.List;

import org.ttcar.domain.Criteria;
import org.ttcar.domain.TicketVO;
  
public interface TicketService {
  
	public List<TicketVO> getTicketList();	//no longer used

	public TicketVO getTicketPage(Long tno);

	public List<TicketVO> getTicketListWithPaging(Criteria cri);

	public int getTotal(Criteria cri); 
	
}