package com.example.demo.Model;

public class Product {

    private Integer id;
    private String name;
    private String category;
    private String subcategory;
    private String collection;
    private String gender;
    private Double price;
    private Double oldPrice;
    private String description;
    private String image;
    private Boolean isNew;
    private Boolean isSale;

    public Product() {
    }

    public Product(Integer id, String name, String category,
                   String subcategory, String collection, String gender,
                   Double price, Double oldPrice, String description,
                   String image, Boolean isNew, Boolean isSale) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.subcategory = subcategory;
        this.collection = collection;
        this.gender = gender;
        this.price = price;
        this.oldPrice = oldPrice;
        this.description = description;
        this.image = image;
        this.isNew = isNew;
        this.isSale = isSale;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubcategory() {
        return subcategory;
    }

    public void setSubcategory(String subcategory) {
        this.subcategory = subcategory;
    }

    public String getCollection() {
        return collection;
    }

    public void setCollection(String collection) {
        this.collection = collection;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getOldPrice() {
        return oldPrice;
    }

    public void setOldPrice(Double oldPrice) {
        this.oldPrice = oldPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Boolean getIsNew() {
        return isNew;
    }

    public void setIsNew(Boolean isNew) {
        this.isNew = isNew;
    }

    public Boolean getIsSale() {
        return isSale;
    }

    public void setIsSale(Boolean isSale) {
        this.isSale = isSale;
    }
}