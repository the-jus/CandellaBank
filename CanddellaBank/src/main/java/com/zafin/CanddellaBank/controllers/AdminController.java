package com.zafin.CanddellaBank.controllers;

import com.zafin.CanddellaBank.entities.Admin;
import com.zafin.CanddellaBank.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AdminController {
    @Autowired
    private AdminRepository adminRepository;
    @RequestMapping("/showAdminLog")
    public String showAdminLoginPage(){
        return "admin/adminloginpage";
    }

    @RequestMapping(value = "adminLogin" , method = RequestMethod.POST)
    public String adminLogin(@RequestParam("username") String username,@RequestParam("password") String passWord){
        Admin admin = adminRepository.findByUsername(username);
        if(admin.getPassWord().equals(passWord)){
            return "admin/admindashboard";
        }
        return "error/errorpage";
    }

    @RequestMapping("/adminControl")
    public String adminControl(){
        return "admin/admindashboard";
    }
}