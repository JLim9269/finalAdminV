package org.ttcar.service;
  
import java.util.List;
  
import org.springframework.stereotype.Service; 
import org.ttcar.domain.TicketVO; 
import org.ttcar.mapper.TicketMapper;
  
import lombok.AllArgsConstructor; 
import lombok.extern.log4j.Log4j;
  
@Log4j
@AllArgsConstructor
@Service 
public class TicketServiceImpl implements TicketService{
  
	private TicketMapper mapper;
  
	@Override 
	public List<TicketVO> getTicketList() {
		log.info("ServiceImpl getTicketList..."); 
		return mapper.getTicketList(); 
	}

	@Override
	public TicketVO getTicketPage(Long tno) {
		log.info("ServiceImpl getTicketPage..."); 
		return mapper.getTicketPage(tno);
	}
}