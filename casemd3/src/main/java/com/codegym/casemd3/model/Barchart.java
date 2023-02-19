package com.codegym.casemd3.model;

public class Barchart {
    private String name;
    private int quantity;

    public Barchart() {
    }

    public Barchart(String name, int quantity) {
        this.name = name;
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
