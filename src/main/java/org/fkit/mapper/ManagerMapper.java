package org.fkit.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Manager;


public interface ManagerMapper {
	@Select("select * from manager where manager_num = #{manager_num1} and manager_password= #{manager_password1}")
	Manager findWithLoginnameAndPassword(@Param("manager_num1")String manager_num1,
			@Param("manager_password1") String manager_password1);
	

}
