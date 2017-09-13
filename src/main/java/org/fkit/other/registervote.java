package org.fkit.other;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class registervote {
	

	public  boolean VoteNum(String user_num){
		String VoteNumStr="^[A-Za-z]+[A-Za-z0-9]+$";
		Pattern pattern=Pattern.compile(VoteNumStr,Pattern.CASE_INSENSITIVE);
		boolean rs=false;
		Matcher matcher=pattern.matcher(user_num);
		rs=matcher.matches();
		if(rs){
			int strLenth=user_num.length();
			if(strLenth<6||strLenth>12){
				rs=false;
			}
		}
		return rs;
	}
	public  boolean VotePassword(String user_password){
		String VotePwdStr="[^[A-Za-z0-9]+$]{6,10}";
		Pattern pattern=Pattern.compile(VotePwdStr,Pattern.CASE_INSENSITIVE);
		boolean rs=false;
		Matcher matcher=pattern.matcher(user_password);
		rs=matcher.matches();
		return rs;
	}

	public  boolean VoteSex(String user_sex){
		boolean rs=false;
		if(user_sex.equals("男")||user_sex.equals("女")){
			rs=true;
		}
		return rs;
	}
}
