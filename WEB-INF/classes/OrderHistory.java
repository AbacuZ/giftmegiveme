public class OrderHistory {

	private String productName;
	private String picProduct;
	private double priceProduct;
	private int piece;
	private String currentDate;
  private String nameMember;
  private String idCard;
	private String lastNameMember;
	private String country;
	private int travelId;

	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getPicProduct() {
		return picProduct;
	}
	public void setPicProduct(String picProduct) {
		this.picProduct = picProduct;
	}
	public double getPriceProduct() {
		return priceProduct;
	}
	public void setPriceProduct(double priceProduct) {
		this.priceProduct = priceProduct;
	}
	public int getPiece() {
		return piece;
	}
	public void setPiece(int piece) {
		this.piece = piece;
	}
	public String getCurrentDate() {
		return currentDate;
	}
	public void setCurrentDate(String currentDate) {
		this.currentDate = currentDate;
	}
  public String getNameMember() {
		return nameMember;
	}
	public void setNameMember(String nameMember) {
		this.nameMember = nameMember;
	}
  public String getIdCard() {
    return idCard;
  }
  public void setIdCard(String idCard) {
    this.idCard = idCard;
  }
	public String getLastNameMember() {
		return lastNameMember;
	}
	public void setLastNameMember(String lastNameMember) {
		this.lastNameMember = lastNameMember;
	}

	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}

	public int getTravelId() {
		return travelId;
	}
	public void setTravelId(int travelId) {
		this.travelId = travelId;
	}
}
