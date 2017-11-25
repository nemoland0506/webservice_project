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
                    }
                }
                if(searchable.getOrder() != null) {

                    ORDER_BY(searchable.getOrder() + " DESC");
                }
            }
        }.toString();
    }
}
