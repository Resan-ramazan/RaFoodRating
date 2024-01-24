package com.amigoscode.service;

import com.amigoscode.entity.Restaurant;

import java.util.List;

public interface RestaurantService {

    List<Restaurant> getAllRestaurants();

    Restaurant saveRestaurant(Restaurant restaurant);

    Restaurant getRestaurantByid(Long id);

    Restaurant updateRestaurant(Restaurant restaurant);

    void deleteRestaurantByid(Long id);


}
