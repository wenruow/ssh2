package com.angular.service;

import com.angular.dao.IBookDAO;
import com.angular.entity.Book;

public class BookManager implements IBookManager {

	
	private IBookDAO bookDao;
	
	


	public void setBookDao(IBookDAO bookDao) {
		this.bookDao = bookDao;
	}


	@Override
	public void saveBook(Book book) {
		
		bookDao.saveBook(book);
		
	}
	
	

}
