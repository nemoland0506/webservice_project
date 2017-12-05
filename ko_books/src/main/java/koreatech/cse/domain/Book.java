package koreatech.cse.domain;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.Collection;
import java.util.List;

public class Book {
    private int id;
    private String title;
    private String author;
    private String publisher;
    private String pubdate;
    private String img;
    private String major;
    private int userId;

    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public void setPubdate(String pubdate) {
        this.pubdate = pubdate;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getAuthor() {
        return author;
    }

    public String getPublisher() {
        return publisher;
    }

    public String getPubdate() {
        return pubdate;
    }

    public String getImg() {
        return img;
    }

    public String getMajor() {
        return major;
    }

    public int getUserId() {
        return userId;
    }
}
