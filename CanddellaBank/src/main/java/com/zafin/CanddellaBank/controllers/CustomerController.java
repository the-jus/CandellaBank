package com.zafin.CanddellaBank.controllers;

import com.zafin.CanddellaBank.entities.Account;
import com.zafin.CanddellaBank.entities.Customer;
import com.zafin.CanddellaBank.entities.Product;
import com.zafin.CanddellaBank.repository.AccountRepository;
import com.zafin.CanddellaBank.repository.CustomerRepository;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;

@Controller
public class CustomerController {
    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private CustomerRepository customerRepository;

    @RequestMapping("/customerSignup")
    public String CustomerSignup(Model model){
        model.addAttribute("customer", new Customer());
        model.addAttribute("accounts", accountRepository.findAll());
        return "customer/customerSignup";
    }

    @RequestMapping(value = "registerCustomer/0", method = RequestMethod.POST)
    public String registerCustomer(@ModelAttribute("customer") Customer customer, @RequestParam("accounts") Account account,Model theModel){
        customer.setAccountNumber(account.getAccountNumber());
        customerRepository.save(customer);
        return "redirect:/adminControl";
    }

    @RequestMapping(value = "/updateCustomer/registerCustomer/{id}", method = RequestMethod.POST)
    public String updateCustomer(@PathVariable("id") Long customerId ,@ModelAttribute("customer") Customer customer, @RequestParam("accounts") Account account){
        customer.setAccountNumber(account.getAccountNumber());
        customer.setCustomerId(customerId);
        customerRepository.save(customer);
        return "redirect:/adminControl";
    }

    @RequestMapping("/viewCustomers")
    public String viewCustomers(Model theModel){
        List<Customer> customerList = customerRepository.findAll();
        theModel.addAttribute("customerList",customerList);
        return "customer/viewcustomer";
    }

    @RequestMapping("/updateCustomer/{id}")
    public String updateCustomer(@PathVariable("id") Long customerId,Model theModel){
        Customer customer = customerRepository.findById(customerId).get();
        List<Account> accounts = accountRepository.findAll();
        theModel.addAttribute("accounts",accounts);
        theModel.addAttribute("customer",customer);
        theModel.addAttribute("customerId",customerId);
        return "customer/customerSignup";
    }

    @RequestMapping("/deleteCustomer/{id}")
    public String deleteCustomer(@PathVariable("id") Long customerId){
        customerRepository.deleteById(customerId);
        return "redirect:/adminControl";
    }
}
