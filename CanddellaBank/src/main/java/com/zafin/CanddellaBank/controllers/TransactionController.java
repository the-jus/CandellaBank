package com.zafin.CanddellaBank.controllers;

import com.zafin.CanddellaBank.dto.TransactionRequest;
import com.zafin.CanddellaBank.entities.Transaction;
import com.zafin.CanddellaBank.repository.TransactionRepository;
import com.zafin.CanddellaBank.services.TransactionService;
import com.zafin.CanddellaBank.services.TransactionServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class TransactionController {
    @Autowired
    TransactionRepository transactionRepository;

    @Autowired
    TransactionService transactionService;



    @RequestMapping("/readTransaction")
    public String readTransaction(){
        return "transaction/gettransaction";
    }

    @RequestMapping(value = "/fileread" ,method = RequestMethod.POST)
    public String readTransactionFile(@RequestParam("fileInput") MultipartFile file, Model theModel){
        List<TransactionRequest> transactionRequestList = new ArrayList<>();

        try {
            BufferedReader in = new BufferedReader(new InputStreamReader(file.getInputStream()));
            //System.out.println("Read");

            String str;
            while ((str = in.readLine()) != null) {
                String[] tValue = str.split(",");
                TransactionRequest transactionRequest = new TransactionRequest();
                transactionRequest.setId(Long.valueOf(tValue[0]));
                transactionRequest.setCustomerCode(Long.valueOf(tValue[1]));
                transactionRequest.setAccountNumber(Long.valueOf(tValue[2]));
                transactionRequest.setProductCode(tValue[3]);
                transactionRequest.setServiceCode(tValue[4]);
                transactionRequest.setValue(Double.parseDouble(tValue[5]));
                transactionRequest.setVolume(Double.parseDouble(tValue[6]));
                transactionRequest.setDateOfTransaction(tValue[7]);
                transactionRequestList.add(transactionRequest);
            }

        } catch (IOException e) {
            // TODO Auto-generated catch block
            System.out.println("File Read Error");
        }
        finally {
            for(TransactionRequest transactionRequest: transactionRequestList){
               double price= transactionService.calculateRates(transactionRequest);
               System.out.println(price);
               transactionRequest.setFees(price);
            }
            for(TransactionRequest transactionRequest: transactionRequestList){
                if(transactionRequest.getFees()>0){
                    Transaction transaction = new Transaction();
                    transaction.setTransactionId(transactionRequest.getId());
                    transaction.setAccountNumber(transactionRequest.getAccountNumber());
                    transaction.setCustomerCode(transactionRequest.getCustomerCode());
                    transaction.setProductCode(transactionRequest.getProductCode());
                    transaction.setValue(transactionRequest.getValue());
                    transaction.setVolume(transactionRequest.getVolume());
                    transaction.setServiceCode(transactionRequest.getServiceCode());
                    transaction.setDateOfTransaction(transactionRequest.getDateOfTransaction());
                    transaction.setFees(transactionRequest.getFees());
                    transactionRepository.save(transaction);
                }
            }
            theModel.addAttribute("transactionRequestList",transactionRequestList);
        }
        return "transaction/listtransaction";
    }



}
