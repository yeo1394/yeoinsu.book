package yeoinsu.bookstore.member.login.service;

import yeoinsu.bookstore.member.login.domain.Member;

public interface MemberService {
	boolean join(Member member);
	Member getLogin(Member member);
}
