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
	public Member getLoginInfo(String userId) {
		return loginMapper.getLoginInfo(userId);
	}

	@Override
	public int updateUser(Member member) {
		return loginMapper.updateUser(member);
	}

	@Override
	public Member getFindId(Member member) {
		return loginMapper.getFindId(member);
	}

	@Override
	public Member getFindPwd(Member member) {
		return loginMapper.getFindPwd(member);
	}

	@Override
	public int updatePwd(Member member) {
		return loginMapper.updatePwd(member);
	}
	
	

}
