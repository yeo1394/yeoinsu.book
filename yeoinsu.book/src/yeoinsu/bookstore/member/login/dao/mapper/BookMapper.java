package yeoinsu.bookstore.member.login.dao.mapper;

import java.util.List;

import yeoinsu.bookstore.member.login.domain.Book;

public interface BookMapper {
	List<Book> getBooks();	//책 목록 조회
	List<Book> getBook(String bookName); //책 한권 조회
	int addBook(Book book);	//책 추가
	int updateBook(Book book); // 책 수정
	int delBook(int bookNum); // 책 삭제
}
