package yeoinsu.bookstore.member.login.domain;

public class Book {
	private int bookNo;
	private String bookName;
	private String bookWriter;
	private int bookPrice;
	private int bookEa;

	public Book() {
	}

	public Book(int bookNo, String bookName, String bookWriter, int bookPrice, int bookEa) {
		this.bookNo = bookNo;
		this.bookName = bookName;
		this.bookWriter = bookWriter;
		this.bookPrice = bookPrice;
		this.bookEa = bookEa;
	}

	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookWriter() {
		return bookWriter;
	}

	public void setBookWriter(String bookWriter) {
		this.bookWriter = bookWriter;
	}

	public int getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(int bookPrice) {
		this.bookPrice = bookPrice;
	}

	public int getBookEa() {
		return bookEa;
	}

	public void setBookEa(int bookEa) {
		this.bookEa = bookEa;
	}
	
}
