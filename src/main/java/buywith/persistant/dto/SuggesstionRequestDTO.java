package buywith.persistant.dto;

public class SuggesstionRequestDTO {
private int suggesstion_id;
private String suggesstion;
private int userId;

public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
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
