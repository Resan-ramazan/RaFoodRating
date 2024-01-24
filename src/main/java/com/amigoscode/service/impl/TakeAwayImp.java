package com.amigoscode.service.impl;

import com.amigoscode.entity.TakeAway;
import com.amigoscode.repository.TakeAwayRepository;
import com.amigoscode.service.TakeAwayService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TakeAwayImp implements TakeAwayService {
    private TakeAwayRepository takeAwayRepository;

    public TakeAwayImp(TakeAwayRepository takeAwayRepository) {
        this.takeAwayRepository = takeAwayRepository;
    }

    @Override
    public List<TakeAway> getAllTakeAway() {
        return takeAwayRepository.findAll();
    }

    @Override
    public TakeAway saveTakeAway(TakeAway takeAway) {
        return takeAwayRepository.save(takeAway);
    }

    @Override
    public TakeAway getTakeAwayById(Long id) {
        return takeAwayRepository.findById(id).get();
    }

    @Override
    public TakeAway updateTakeAway(TakeAway takeAway) {
        return takeAwayRepository.save(takeAway);
    }

    @Override
    public void deleteTakeAwayByid(Long id) {
        takeAwayRepository.deleteById(id);
    }
}
