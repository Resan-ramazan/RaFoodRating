package com.amigoscode.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity(name = "et_restaurant")
@Table(name = "et_restaurant")
public class Restaurant  extends Outlet{
    public Restaurant() {
    }

    public Restaurant(String name, String rating, String price, String hours, String city, String given_vote, String current_vote) {
        super(name, rating, price, hours, city, given_vote, current_vote);
    }
}
