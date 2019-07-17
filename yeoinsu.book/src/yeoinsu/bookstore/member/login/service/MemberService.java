package yeoinsu.bookstore.member.login.service;

import yeoinsu.bookstore.member.login.domain.Member;

public interface MemberService {
	boolean join(Member member);
	Member getLogin(String userId);
	boolean correctUser(Member member);
	Member getSearchId(Member member);
	Member getSearchPwd(Member member);
	boolean correctPwd(Member member);
	boolean secedeUser(String userId);
}
