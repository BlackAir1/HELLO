package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Good;




public interface GoodMapper {
	@Select("select * from goods")
	List<Good> findAll();
	@Delete("delete from goods where good_id=#{good_id}")
	void deleteGoodById(@Param("good_id") int good_id);
	@Update("update goods set good_name=#{good_name},good_price=#{good_price},good_image=#{good_image},good_image1=#{good_image1},good_introduce=#{good_introduce} where good_id=#{good_id}")
	void updateGood(Good good);
	@Select("select * from goods where good_id=#{good_id}")
	Good selectGoodById(@Param("good_id") int good_id);
	@Insert("insert into goods(good_id,good_name,good_price,good_image,good_image1,good_introduce) values(#{good_id},#{good_name},#{good_price},#{good_image},#{good_image1},#{good_introduce}) ")
	@Options(useGeneratedKeys=true,keyProperty="id")
	void addGood(Good good);
	@Select("select * from goods where good_name=#{good_name}")
	Good selectGoodByName(@Param("good_name") String good_name);
}