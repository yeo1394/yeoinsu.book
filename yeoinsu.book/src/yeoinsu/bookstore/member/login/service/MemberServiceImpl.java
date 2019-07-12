package yeoinsu.bookstore.member.login.service;

import yeoinsu.bookstore.member.login.dao.MemberDao;
import yeoinsu.bookstore.member.login.dao.MemberDaoImpl;
import yeoinsu.bookstore.member.login.domain.Member;

public class MemberServiceImpl implements MemberService{
	private MemberDao memberDao;
	
	public MemberServiceImpl(){
		this.memberDao = new MemberDaoImpl();
	}

	@Override
	public boolean join(Member member) {
		return memberDao.addUser(member)>0;
	}

	@Override
	public Member getLogin(String userId) {
		return memberDao.getLoginInfo(userId);
	}

	@Override
	public Member getSearchId(Member member) {
		return memberDao.getFindId(member);
	}

	@Override
	public Member getSearchPwd(Member member) {
		return memberDao.getFindPwd(member);
	}

	@Override
	public boolean correctPwd(Member member) {
		return memberDao.updatePwd(member)>0;
	}
	
	
}
