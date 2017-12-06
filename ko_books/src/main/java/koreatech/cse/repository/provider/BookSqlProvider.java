package koreatech.cse.repository.provider;

import koreatech.cse.domain.BookSearchable;
import org.apache.ibatis.jdbc.SQL;

public class BookSqlProvider {

    public String findAllByProvider(final BookSearchable searchable) {
        return new SQL() {
            {
                SELECT("*");
                FROM("BOOKS");
                if(searchable.getTitle() != null) {
                    WHERE("TITLE = #{title}");
                    if(searchable.getAuthor() != null) {
                        OR();
                        WHERE("AUTHOR = #{author}");
                        if(searchable.getPublisher() != null) {
                            OR();
                            WHERE("PUBLISHER = #{publisher}");
                            if(searchable.getPubdate() != null) {
                                OR();
                                WHERE("PUBDATE = #{pubdate}");
                                if(searchable.getMajor() != null) {
                                    OR();
                                    WHERE("MAJOR = #{major}");
                                    if(searchable.getPhone() != null) {
                                        OR();
                                        WHERE("PHONE = #{phone}");
                                        if(searchable.getPrice() != null) {
                                            OR();
                                            WHERE("PRICE = #{price}");
                                        }
                                    }
                                }
                            }
                        }
                    }

                }
                if(searchable.getOrder() != null) {

                    ORDER_BY(searchable.getOrder() + " DESC");
                }
            }
        }.toString();
    }
}
