package yeoinsu.bookstore.member.login.dao;

import java.util.List;

import yeoinsu.bookstore.member.login.domain.Book;

public interface BookDao {
	List<Book> getBooks();
	List<Book> getBook(String bookName);
	int addBook(Book book);
	int updateBook(Book book);
	int delBook(int bookNum);
}
