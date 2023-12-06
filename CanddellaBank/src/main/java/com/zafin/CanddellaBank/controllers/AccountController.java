package com.zafin.CanddellaBank.controllers;

import com.zafin.CanddellaBank.entities.Account;
import com.zafin.CanddellaBank.entities.Product;
import com.zafin.CanddellaBank.repository.AccountRepository;
import com.zafin.CanddellaBank.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AccountController {
    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private AccountRepository accountRepository;

    @RequestMapping("/showAccountConfig")
    public String addAccount(Model model){
        List<Product> productList = productRepository.findAll();
        model.addAttribute("productList", productList);
        return "account/accountDetails";
    }

    @RequestMapping(value = "saveAccount", method = RequestMethod.POST)
    public String saveAccount(@ModelAttribute("account") Account account, @RequestParam("productList") Product product){
        account.setProduct(product);
        accountRepository.save(account);
        return "admin/admindashboard";
    }


}
