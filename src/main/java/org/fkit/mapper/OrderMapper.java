package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Order;

public interface OrderMapper {

	@Insert("insert into orders(user_id,user_name,order_time,order_sum) values(#{user_id},#{user_name},#{order_time},#{order_sum})")
	void addOrder(Order order);
	@Select("select* from orders where user_id=#{user_id}")
	List<Order> getAll(Integer user_id);
	@Update("update orders set user_chat=#{user_chat},grade=#{grade},chat_picture=#{chat_picture} where user_id=#{user_id}")
	void addChat(Order order);
	@Delete("delete from orders where id=#{id}")
	void deleteOrderById(Integer id);
}
