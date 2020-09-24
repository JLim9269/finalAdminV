package org.ttcar.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.ttcar.domain.Criteria;
import org.ttcar.domain.ReplyPageDTO;
import org.ttcar.domain.ReplyVO;
import org.ttcar.mapper.ReplyMapper;
import org.ttcar.mapper.TicketMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {
    //AutoWired
	 private ReplyMapper replyMapper;
	 
	 private TicketMapper ticketMapper;
	 
	@Transactional
	@Override
	public int insert(ReplyVO vo) {
		log.info("register...."+vo);
		
		//댓글 갯수 추가 트랜잭션
		ticketMapper.updateReplyCnt(vo.getTno(), 1);
		//댓글 입력 트랜잭셩
		return replyMapper.insert(vo);
		
	}

	@Override
	public ReplyVO read(Long rno) {
		log.info("read...."+rno);
		return replyMapper.read(rno);
	}

	@Override
	public int delete(Long rno) {
		log.info("delete...."+rno);
		
		ReplyVO vo = read(rno);
		//댓글 갯수 감소 트랜잭션
		ticketMapper.updateReplyCnt(vo.getTno(), -1);
		return replyMapper.delete(rno);
	}

	@Transactional
	@Override
	public int update(ReplyVO vo) {
		log.info("update...."+vo);
		
		return replyMapper.update(vo);
	}

	@Override
	public ReplyPageDTO getListWithPaging(Criteria cri, Long tno) {
		log.info("getListWithPaging...."+tno);
		return new ReplyPageDTO(replyMapper.getCountByTno(tno),
				replyMapper.getListWithPaging(cri, tno));
	}
/*
	@Override
	public List<ReplyVO> getListWithPaging(Criteria cri, Long bno) {
		log.info("getListWithPaging...."+bno);
		return mapper.getListWithPaging(cri, bno);
	}
	
	*/
	
	

}
