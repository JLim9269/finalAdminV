package org.ttcar.mapper;

import org.ttcar.domain.AdminVO;

public interface AdminMapper {

	public void register(AdminVO vo);

	public AdminVO getAdmin(AdminVO vo);
}