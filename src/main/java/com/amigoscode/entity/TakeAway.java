package com.amigoscode.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity(name = "et_take_away")
@Table(name = "et_take_away")
public class TakeAway extends Outlet{
    public TakeAway() {
    }

    public TakeAway(String name, String rating, String price, String hours, String city, String given_vote, String current_vote) {
        super(name, rating, price, hours, city, given_vote, current_vote);
    }
}
