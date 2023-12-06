package com.zafin.CanddellaBank.controllers;

import com.zafin.CanddellaBank.entities.Rate;
import com.zafin.CanddellaBank.repository.RateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RateController {
    @Autowired
    RateRepository rateRepository;
    @RequestMapping("/showrateconfig")
    public String showRateConfig(){
        return "rate/configure_rate";
    }
    @RequestMapping(value = "/addRate" ,method = RequestMethod.POST)
    public String showRatePage(@ModelAttribute("rate") Rate rate){
        rateRepository.save(rate);
        return "redirect:adminControl";
    }
}
