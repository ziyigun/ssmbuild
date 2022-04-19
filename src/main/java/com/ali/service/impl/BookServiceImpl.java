package com.ali.service.impl;

import com.ali.dao.BookMapper;
import com.ali.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public class BookServiceImpl implements com.ali.service.BookService {
    //service调用dao层，组合dao
    private BookMapper bookMapper;
    public void setBookMapper(BookMapper bookMapper){
        this.bookMapper = bookMapper;
    }
    @Override
    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    @Override
    public Books queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}
