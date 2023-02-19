package com.codegym.casemd3.model;

import java.util.Date;

public class Customer {
    private Long id;
    private String name;
    private Date createdAt;
    private String address;
    private String image;

    private int idType;
    private String phone;

    public Customer(String name, Date createdAt, String address, String image , String phone) {
        this.name = name;
        this.createdAt = createdAt;
        this.address = address;
        this.image = image;
        this.phone = phone;

    }

    public Customer(Long id, String name, Date createdAt, String address, String image , String phone, int idType) {
        this.id = id;
        this.name = name;
        this.createdAt = createdAt;
        this.address = address;
        this.image = image;
        this.idType = idType;
        this.phone = phone;
    }

    public Customer(Long id, String name, Date createdAt, String address, String image , String phone) {
        this.id = id;
        this.name = name;
        this.createdAt = createdAt;
        this.address = address;
        this.image = image;
        this.phone = phone;

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Customer() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getIdType() {
        return idType;
    }

    public void setIdType(int idType) {
        this.idType = idType;
    }
}
