package buywith.persistant.dto;

public class SuggesstionResponseDTO {

	private int suggesstion_id;
	private String suggesstion;
	private int user_id;

	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getSuggesstion_id() {
		return suggesstion_id;
	}
	public void setSuggesstion_id(int suggesstion_id) {
		this.suggesstion_id = suggesstion_id;
	}
	public String getSuggesstion() {
		return suggesstion;
	}
	public void setSuggesstion(String suggesstion) {
		this.suggesstion = suggesstion;
	}
	
}
