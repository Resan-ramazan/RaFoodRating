package com.amigoscode.service;

import com.amigoscode.entity.TakeAway;

import java.util.List;

public interface TakeAwayService {

    List<TakeAway> getAllTakeAway();

TakeAway saveTakeAway(TakeAway takeAway);

TakeAway getTakeAwayById(Long id);

TakeAway updateTakeAway(TakeAway takeAway);

void deleteTakeAwayByid(Long id);

}
