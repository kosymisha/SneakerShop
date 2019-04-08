package com.someshop.intershop.model;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.*;

@Entity
@Table(name = "advert")
public class Advert implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "store_id")
    private String storeId;

    @Column
    private String currency;

    @Column
    private BigDecimal price;

    @Column
    private Integer views;

    @Column
    private String description;

    @Column(name = "product_url")
    private String productURL;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "product_id")
    private Product product;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "shop_id")
    private Shop shop;

    @OneToMany(mappedBy = "advert", cascade = CascadeType.ALL)
    private Set<Comment> comments;

    public Advert() {

    }

    public Advert(String storeId, String currency, BigDecimal price, Integer views, String productURL, Product product, Shop shop, String description) {
        this.storeId = storeId;
        this.currency = currency;
        this.price = price;
        this.views = views;
        this.productURL = productURL;
        this.product = product;
        this.shop = shop;
        this.description = description;
    }

    public List<Comment> getCommentsOrderByDate(){
        List<Comment> comments = new LinkedList<>(getComments());
        Collections.sort(comments, new Comparator<Comment>() {
            public int compare(Comment c1, Comment c2) {
                return c1.getDate().compareTo(c2.getDate()) * -1;
            }
        });
        return comments;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void addView () { this.views++; }

    public int getCommentsSize() { return comments.size(); }

    public String getStoreId() {
        return storeId;
    }

    public void setStoreId(String storeId) {
        this.storeId = storeId;
    }

    public Set<Comment> getComments() {
        return comments;
    }

    public void setComments(Set<Comment> comments) {
        this.comments = comments;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getViews() {
        return views;
    }

    public void setViews(Integer views) {
        this.views = views;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }

    public String getProductURL() {
        return productURL;
    }

    public void setProductURL(String productURL) {
        this.productURL = productURL;
    }
}