package yeoinsu.bookstore.member.login.dao;

import java.util.List;

import yeoinsu.bookstore.config.Configuration;
import yeoinsu.bookstore.member.login.dao.mapper.BookMapper;
import yeoinsu.bookstore.member.login.domain.Book;

public class BookDaoImpl implements BookDao{
	private BookMapper bookMapper;

	public BookDaoImpl(){
		this.bookMapper=Configuration.getMapper(BookMapper.class);
	}
	
	public List<Book> getBooks(){
		return bookMapper.getBooks();
	}
	
	public int addBook(Book book){
		return bookMapper.addBook(book);
	}
	
	public int updateBook(Book book){
		return bookMapper.updateBook(book);
	}
	
	public int delBook(int bookNum){
		return bookMapper.delBook(bookNum);
	}
	
	public List<Book> getBook(String bookName){
		return bookMapper.getBook(bookName);
	}

}
