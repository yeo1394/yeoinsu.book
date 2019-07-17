package yeoinsu.bookstore.member.login.service;

import java.util.List;

import yeoinsu.bookstore.member.login.dao.BookDao;
import yeoinsu.bookstore.member.login.dao.BookDaoImpl;
import yeoinsu.bookstore.member.login.domain.Book;

public class BookServiceImpl implements BookService{
	private BookDao bookDao;
	
	public BookServiceImpl(){
		this.bookDao = new BookDaoImpl();
	}
	
	public List<Book> getBooks(){
		return bookDao.getBooks();
	}
	
	public int addBook(Book book){
		return bookDao.addBook(book);
	}
	
	public int updateBook(Book book){
		return bookDao.updateBook(book);
	}
	
	public int delBook(int bookNum){
		return bookDao.delBook(bookNum);
	}
	
	public List<Book> getBook(String bookName){
		return bookDao.getBook(bookName);
	}
}
