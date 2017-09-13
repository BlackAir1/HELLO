package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Collect;

public interface  CollectMapper {
	@Select("select * from collect where good_id=#{good_id}")
	Collect findCollectById(@Param("good_id")Integer good_id);
	@Insert("insert into collect(user_id,user_name,good_id,good_name,good_introduce,good_price) values(#{user_id},#{user_name},#{good_id},#{good_name},#{good_introduce},#{good_price})")
	void insertCollect(Collect collect);
	@Select("select * from collect where user_id=#{user_id} ")
	List<Collect> selectCollectByUser(Integer user_id);
	@Delete("delete from collect where good_id=#{good_id}")
	void deleteCollect(Integer good_id);
}
