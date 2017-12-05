package koreatech.cse.domain;


public class BookSearchable {
    private String title;
    private String author;
    private String publisher;
    private String pubdate;
    private String major;
    private String order;

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

    public void setMajor(String major) {
        this.major = major;
    }

    public void setOrder(String order) {
        this.order = order;
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

    public String getMajor() {
        return major;
    }

    public String getOrder() {
        return order;
    }
}
