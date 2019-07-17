package yeoinsu.bookstore.member.login.service;

import java.util.List;

import yeoinsu.bookstore.member.login.domain.Book;

public interface BookService {
	List<Book> getBooks();
	List<Book> getBook(String bookName);
	int addBook(Book book);
	int updateBook(Book book);
	int delBook(int bookNum);
}
