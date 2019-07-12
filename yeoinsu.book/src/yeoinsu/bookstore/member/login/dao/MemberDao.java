package yeoinsu.bookstore.member.login.dao;

import yeoinsu.bookstore.member.login.domain.Member;

public interface MemberDao {
	int addUser(Member member);
	Member getLoginInfo(String userId);
	Member getFindId(Member member);
	Member getFindPwd(Member member);
	int updatePwd(Member member);
}
