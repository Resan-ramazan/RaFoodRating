package com.amigoscode.entity;


import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity(name = "et_bistro")
@Table(name = "et_bistro")
public class Bistro extends Outlet {
    public Bistro() {
    }

    public Bistro(String name, String rating, String price, String hours, String city, String given_vote, String current_vote) {
        super(name, rating, price, hours, city, given_vote, current_vote);
    }

}
