package org.ttcar.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ttcar.domain.Criteria;
import org.ttcar.domain.ReplyPageDTO;
import org.ttcar.domain.ReplyVO;

public interface ReplyService {

	//댓글 입력메소드
	int insert(ReplyVO vo);

	//특정 댓글 조회
	ReplyVO read(Long rno);

	//댓글 삭제
	int delete(Long rno);

	//댓글 수정
	int update(ReplyVO vo);

	//게시글의  댓글 리스트 조회
	//List<ReplyVO> getListWithPaging(Criteria cri, Long bno);
	
	ReplyPageDTO getListWithPaging(Criteria cri, Long bno);

}