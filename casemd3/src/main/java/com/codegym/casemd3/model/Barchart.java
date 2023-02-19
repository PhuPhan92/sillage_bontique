package com.codegym.casemd3.model;

public class Barchart {
    private String name;
    private int quantity;
    private double sum;

    public Barchart() {
    }

    public Barchart(String name, int quantity, double sum) {
        this.name = name;
        this.quantity = quantity;
        this.sum = sum;
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

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }
}
