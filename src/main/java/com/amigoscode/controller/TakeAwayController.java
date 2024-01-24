package com.amigoscode.controller;

import com.amigoscode.entity.TakeAway;

import com.amigoscode.service.TakeAwayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class TakeAwayController {
    private TakeAwayService takeAwayService;

    @Autowired
    public TakeAwayController(TakeAwayService takeAwayService) {
        this.takeAwayService = takeAwayService;
    }

    @GetMapping("/outlets/new-take-away")
    public String createTakeAway(Model model){
        TakeAway takeAway = new TakeAway();
        model.addAttribute("takeAway",takeAway);
        return "new-take-away";
    }

    @PostMapping("/takeAways")
    public String saveTakeAway(TakeAway takeAway){
        takeAwayService.saveTakeAway(takeAway);
        return "redirect:/outlets";
    }

    @GetMapping("/takeAways/edit/{id}")
    public String editTakeAway(Long id, Model model){
        model.addAttribute("takeAway",takeAwayService.getTakeAwayById(id));
        return "edit-take-away";
    }

    @PostMapping("/takeAways/{id}")
    public String updateTakeAway(Long id, TakeAway takeAway, Model model){
        TakeAway existTakeAway = takeAwayService.getTakeAwayById(id);
        existTakeAway.setId(id);
        existTakeAway.setName(takeAway.getName());
        try {
            String [] splitRating = existTakeAway.getGiven_vote().split("-");
            double sumOfRatings = 0;
            try {
                for (String s : splitRating) {
                    sumOfRatings += Double.parseDouble(s);
                }
                if (Integer.parseInt(takeAway.getCurrent_vote()) >= 0 ) {
                    double rating = (sumOfRatings+Double.parseDouble(takeAway.getCurrent_vote()))/(splitRating.length+1);
                    String calculatedRating = String.format("%.2f",rating);
                    existTakeAway.setRating(calculatedRating);
                    existTakeAway.setRange(takeAway.getRange());
                    existTakeAway.setHours(takeAway.getHours());
                    existTakeAway.setCity(takeAway.getCity());
                    takeAwayService.saveTakeAway(existTakeAway);
                    return "redirect:/outlets";
                } else {
                    model.addAttribute("errorMessage","Please enter a valid rating");
                    return "edit-take-away";
                }
            } catch (NumberFormatException e) {
                model.addAttribute("errorMessage","Please enter a valid rating");
                return "edit-take-away";
            }
        } catch (NullPointerException e) {
            if (Integer.parseInt(takeAway.getCurrent_vote()) >= 0 ) {
                existTakeAway.setRating(takeAway.getCurrent_vote());
                existTakeAway.setRange(takeAway.getRange());
                existTakeAway.setHours(takeAway.getHours());
                existTakeAway.setCity(takeAway.getCity());
                takeAwayService.saveTakeAway(existTakeAway);
                return "redirect:/outlets";
            } else {
                model.addAttribute("errorMessage","Please enter a valid rating");
                return "edit-take-away";
            }
        }
    }

    @GetMapping("/takeAways/{id}")
    public String deleteTakeAway(Long id){
        takeAwayService.deleteTakeAwayByid(id);
        return "redirect:/outlets";
    }


}
