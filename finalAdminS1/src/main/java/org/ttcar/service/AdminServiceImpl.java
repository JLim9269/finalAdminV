package org.ttcar.service;

import org.springframework.stereotype.Service;
import org.ttcar.domain.AdminVO;
import org.ttcar.mapper.AdminMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Service 
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;
	
	@Override
	public void register(AdminVO vo) {
		log.info("ServiceImpl register..."); 
		mapper.register(vo);
	}

	@Override
	public AdminVO getAdmin(AdminVO vo) {
		log.info("ServiceImpl getAdmin...");
		return mapper.getAdmin(vo);
	}
}