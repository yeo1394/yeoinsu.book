package yeoinsu.bookstore.member.login.dao;

import yeoinsu.bookstore.config.Configuration;
import yeoinsu.bookstore.member.login.dao.mapper.LoginMapper;
import yeoinsu.bookstore.member.login.domain.Member;


public class MemberDaoImpl implements MemberDao{
	private LoginMapper loginMapper;
	
	public MemberDaoImpl() {
		this.loginMapper = Configuration.getMapper(LoginMapper.class);
	}

	@Override
	public int addUser(Member member) {
		return loginMapper.addUser(member);
	}

	@Override
	public Member getLoginInfo(Member member) {
		return loginMapper.getLoginInfo(member);
	}

}
