package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.User;


public interface UserMapper {
	

	@Select("select * from user where user_num = #{user_num1} and user_password= #{user_password1}")
	User findWithLoginnameAndPassword(@Param("user_num1")String user_num1,
			@Param("user_password1") String user_password1);
	@Insert("insert into user(user_sex,user_name,user_num,user_password,user_phone) values(#{user_sex},#{user_name},#{user_num},#{user_password},#{user_phone}) ")
		void registerWithLoginnameAndPassword(@Param("user_sex") String user_sex,@Param("user_name") String user_name,@Param("user_num") String user_num,@Param("user_password") String user_password,@Param("user_phone") String user_phone);
	@Update("update user set user_password=#{user_newpwd} where user_num = #{user_num2} and user_password = #{user_password2}  ")
		void changeWithLoginnameAndPassword(@Param("user_num2")String user_num2,
			@Param("user_password2") String user_password2,@Param("user_newpwd")String user_newpwd);

	@Select("select * from user where user_num=#{user_num3} and user_name=#{user_name3} and user_phone=#{user_phone3}")
	User findWithLogin(@Param("user_num3")String user_num3,
				@Param("user_name3")String user_name3,@Param("user_phone3")String user_phone3);
	
	@Select("select * from user where user_phone=#{user_phone3}")
	@Results({
		@Result(column="user_phone3", property="user_phone3" ),
		@Result(column="user_num", property="user_num" ),
		@Result(column="user_name", property="user_name" ),
		@Result(column="user_sex", property="user_sex" ),
	})
	User findpwdwithphone(String user_phone3);
	
	//邮箱找回密码
	@Select("select * from user where user_num=#{user_num} and user_phone=#{user_phone}")
	User selectUserBy(@Param("user_num") String user_num, @Param("user_phone") String user_phone );
}