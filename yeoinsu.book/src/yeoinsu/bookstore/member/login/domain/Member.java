package yeoinsu.bookstore.member.login.domain;

public class Member {
	private String userId;
	private String userPw;
	private String userName;
	private String userAnswer;
	
	public Member(){}
	
	public Member(String userId, String userPw, String userName, String answer){
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userAnswer = answer;
	}
	
	public Member(String userId, String userPw, String answer){
		this.userId = userId;
		this.userPw = userPw;
		this.userAnswer = answer;
	}
	
	public Member(String userName, String userAnswer){
		this.userName = userName;
		this.userAnswer = userAnswer;
	}
	
	public Member(String userName, String userId, String userAnswer){
		this.userName=userName;
		this.userId= userId;
		this.userAnswer=userAnswer;
	}
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAnswer() {
		return userAnswer;
	}

	public void setUserAnswer(String userAnswer) {
		this.userAnswer = userAnswer;
	}
	
}
