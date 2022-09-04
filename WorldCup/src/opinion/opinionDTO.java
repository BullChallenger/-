package opinion;

public class opinionDTO {
	
	String userNickName;
	String userOpinion;
	int opinionNumber;

	public String getUserNickName() {
		return userNickName;
	}
	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}
	public String getUserOpinion() {
		return userOpinion;
	}
	public void setUserOpinion(String userOpinion) {
		this.userOpinion = userOpinion;
	}
	public int getOpinionNumber() {
		return opinionNumber;
	}
	public void setOpinionNumber(int opinionNumber) {
		this.opinionNumber = opinionNumber;
	}
	
	public opinionDTO() {
		
	}
	
	public opinionDTO(String userNickName, String userOpinion, int opinionNumber) {
		super();
		this.userNickName = userNickName;
		this.userOpinion = userOpinion;
		this.opinionNumber = opinionNumber;
	}

}
