package yeoinsu.bookstore.member.login.dao.mapper;

import yeoinsu.bookstore.member.login.domain.Member;

public interface LoginMapper {
	int addUser(Member member);
	Member getLoginInfo(String userId);
}