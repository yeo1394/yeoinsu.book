package yeoinsu.bookstore.member.login.dao;

import yeoinsu.bookstore.member.login.domain.Member;

public interface MemberDao {
	int addUser(Member member);
	Member getLoginInfo(String userId);
	int updateUser(Member member);
}
