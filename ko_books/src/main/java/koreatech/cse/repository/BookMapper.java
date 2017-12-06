package koreatech.cse.repository;


import koreatech.cse.domain.BookSearchable;
import koreatech.cse.domain.User;
import koreatech.cse.domain.Book;
import koreatech.cse.repository.provider.UserSqlProvider;
import koreatech.cse.repository.provider.BookSqlProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
public interface BookMapper {
    @Insert("INSERT INTO BOOKS (TITLE, AUTHOR, PUBLISHER, PUBDATE, MAJOR, USERID, PHONE, PRICE) VALUES (#{title}, #{author}, #{publisher}, #{pubdate}, #{major}, #{userId}, #{phone}, #{price})")
    @SelectKey(statement = "SELECT LAST_INSERT_ID()", keyProperty = "id", before = false, resultType = int.class)
    void insert(Book book);

    @Delete("DELETE FROM BOOKS WHERE ID = #{id}")
    void delete(@Param("id") int id);

    @SelectProvider(type = BookSqlProvider.class, method = "findAllByProvider")
    List<Book> findByProvider(BookSearchable searchable);

    //@formatter off
    @Select("<script>"
            + "SELECT * FROM BOOKS"
            + "<if test='title != null'> WHERE NAME = #{title}</if>"
            + "<if test='title != null and author != null'> OR AUTHOR = #{author}</if>"
            + "<if test='order != null'>ORDER BY ${order} DESC</if>"
            + "</script>")
    //@formatter on
    List<Book> findByScript(BookSearchable searchable);



}
