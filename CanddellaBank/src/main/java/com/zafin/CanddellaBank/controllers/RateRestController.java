package com.zafin.CanddellaBank.controllers;

import com.zafin.CanddellaBank.entities.Rate;
import com.zafin.CanddellaBank.repository.RateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class RateRestController {
    @Autowired
    RateRepository rateRepository;

    @RequestMapping("viewAllRates")
    public List<String> viewAllRates(){
      List<Rate> rateList = rateRepository.findAll();
      List<String> rateName = new ArrayList<>();
      for (Rate rate:rateList){
          rateName.add(rate.getRateDescription());
      }
      return rateName;
    }
}
