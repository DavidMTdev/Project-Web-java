package ynov.david.model;

import java.util.Date;

public class Article {
    private int id;
    private String author;
    private String title;
    private String content;
    private String text;
    private Date registerDate;
    private Date updateDate;

    /**
     * @return int return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return String return the author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * @param author the author to set
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * @return String return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return String return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * @return String return the text
     */
    public String getText() {
        return text;
    }

    /**
     * @param text the text to set
     */
    public void setText(String text) {
        this.text = text;
    }

    /**
     * @return Date return the register_date
     */
    public Date getRegisterDate() {
        return registerDate;
    }

    /**
     * @param registerDate the register_date to set
     */
    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    /**
     * @return Date return the update_date
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * @param updateDate the update_date to set
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

}