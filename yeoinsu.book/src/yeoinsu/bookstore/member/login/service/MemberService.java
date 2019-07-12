package yeoinsu.bookstore.member.login.service;

import yeoinsu.bookstore.member.login.domain.Member;

public interface MemberService {
	boolean join(Member member);
	Member getLogin(String userId);
	Member getSearchId(Member member);
	Member getSearchPwd(Member member);
	boolean correctPwd(Member member);
}
