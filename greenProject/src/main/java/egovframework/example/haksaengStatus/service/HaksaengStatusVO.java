package egovframework.example.haksaengStatus.service;

public class HaksaengStatusVO {

	private String userId 	= "";
	private String userNm	= "";
	private String cafeNick = "";
	private int age 		= 0;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getCafeNick() {
		return cafeNick;
	}
	public void setCafeNick(String cafeNick) {
		this.cafeNick = cafeNick;
	}
	
	
}
