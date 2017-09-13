package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Cart;
import org.fkit.domain.Order;

public interface CartMapper {
	@Select("select * from cart where good_id=#{good_id}")
	Cart findCartById(@Param("good_id")Integer good_id);
	@Insert("insert into cart(user_id,user_name,good_id,good_name,good_count,good_price,good_total) values(#{user_id},#{user_name},#{good_id},#{good_name},#{good_count},#{good_price},#{good_total})")
	void insertCart(Cart cart);
	@Update("update cart set good_count=#{good_count}+good_count where good_id=#{good_id}")
	void updateCart(Cart cart);
	@Select("select * from cart where user_id=#{userid} ")
	List<Cart> selectCartByUser(Integer userid);
	@Delete("delete from cart where cart_id=#{cart_id}")
	void deleteCartById(Integer cart_id);
	@Update("update cart set good_count=#{good_count} where cart_id=#{cart_id}")
	void updateCount(Cart cart);

}
