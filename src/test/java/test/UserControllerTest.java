package test;

import static org.junit.Assert.fail;

import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)   
@ContextConfiguration(locations={"classpath*:/applicationContext.xml","classpath*:/springmvc-config.xml"})

public class UserControllerTest {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@Before
	public void setUp() throws Exception {

		
	}

	@Test
	public void testLogin() {
		String user_num1="f123456";
		String user_password1="222222";
		User user = userService.login(user_num1, user_password1);
		if(user!=null){
			System.out.println(user);
		}else{
			System.out.println("user不存在");
		}
	}

	@Test
	public void testRegister() {
		String user_sex="男";
		String user_name="asd";
		String user_num="a111111";
		String user_password="123456";
		String user_phone="12345678910";
		userService.insertUser(user_sex, user_name, user_num, user_password, user_phone);
		
	
	}

	@Test
	public void testChange() {
		String user_num2="a111111";
		String user_password2="123456";
		String user_newpwd="654321";
		userService.change(user_num2, user_password2, user_newpwd);
	}

}
