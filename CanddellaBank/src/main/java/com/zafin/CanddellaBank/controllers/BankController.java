package com.zafin.CanddellaBank.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class BankController {
    @RequestMapping("/showLog")
    public String showLoginPage(){
        return "login/loginpage";
    }

    @GetMapping("/logout")
    public String logout() {
        return "admin/showAdminLog";
    }

    @RequestMapping("/viewRates")
    public String showReservation( ModelMap modelMap) {
        return "json/jsonfetch";
    }
}
