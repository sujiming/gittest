package com.flowers.service;
/**
 * 用户注册service层
 * @author 阿飞
 *
 */
import com.flowers.dao.MemberRegisterDaoImpl;
import com.flowers.model.Member;
public class MemberRegisterService {
	//实例化注册的Dao层
	MemberRegisterDaoImpl mrd = new MemberRegisterDaoImpl();
	//实例化Memeber
	Member member = null;
	public void memberRegisterS(Member member){
		//调用dao层
		mrd.memberRegisterD(member);
	}
	//验证注册时用户名或电话号码是否存在
	public boolean memberRqueryByNameS(String name_tel) {
		boolean bool = mrd.memberRqueryByNameOrTelD(name_tel);
		return bool;
	}
}
