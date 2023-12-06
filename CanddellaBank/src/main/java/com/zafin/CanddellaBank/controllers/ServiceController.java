package com.zafin.CanddellaBank.controllers;


import com.zafin.CanddellaBank.entities.Rate;
import com.zafin.CanddellaBank.entities.Service;
import com.zafin.CanddellaBank.repository.RateRepository;
import com.zafin.CanddellaBank.repository.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class ServiceController {
    @Autowired
    ServiceRepository serviceRepository;
    @Autowired
    RateRepository rateRepository;
    @RequestMapping(value = "/addService" ,method = RequestMethod.POST)
    public String showRatePage(@ModelAttribute("service") Service service){
        serviceRepository.save(service);
        return "redirect:adminControl";
    }

    @RequestMapping("/showServiceConfig")
    public String showServiceConfig(Model theModel){
        List<Rate> rateList = rateRepository.findAll();
        theModel.addAttribute("rateList",rateList);
        return "service/add_service";
    }

    @RequestMapping("/viewServices")
    public String viewServices(Model theModel){
        List<Service> serviceList = serviceRepository.findAll();
        theModel.addAttribute("serviceList",serviceList);
        return "service/viewservice";
    }
}
