package com.zafin.CanddellaBank.services;

import com.zafin.CanddellaBank.dto.TransactionRequest;
import com.zafin.CanddellaBank.entities.Rate;
import com.zafin.CanddellaBank.repository.AccountRepository;
import com.zafin.CanddellaBank.repository.CustomerRepository;
import com.zafin.CanddellaBank.repository.ProductRepository;
import com.zafin.CanddellaBank.repository.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TransactionServiceImpl implements TransactionService {

    @Autowired
    ServiceRepository serviceRepository;

    @Autowired
    ProductRepository productRepository;
    @Autowired
    AccountRepository accountRepository;

    @Autowired
    CustomerRepository customerRepository;

    @Override
    public double calculateRates(TransactionRequest transactionRequest) {
        System.out.println(serviceRepository.findAll().size());
        if(serviceRepository.existsById(transactionRequest.getServiceCode())){
            com.zafin.CanddellaBank.entities.Service service = serviceRepository.findByServiceCode(transactionRequest.getServiceCode());
            if(productRepository.existsById(transactionRequest.getProductCode())){
                if(accountRepository.existsById(transactionRequest.getAccountNumber())){
                    if(customerRepository.existsById(transactionRequest.getCustomerCode())){
                        Rate rate = service.getRate();
                        String parameter = rate.getBasedOn();
                        if(parameter.equals("volume")){
                            double volume = transactionRequest.getVolume();
                            if(rate.getPricingMethodology().equals("wholeTier")){
                                double requiredRate= calculateWholeTier(rate,volume);
                                double price= requiredRate*volume;
                                return price;
                                //calculate price
                            }else{
                                double requiredRate= calculateProgressiveTier(rate,volume);
                                double price= requiredRate*volume;
                                return price;
                            }
                        }
                        else{
                            double value = transactionRequest.getValue();
                            if(rate.getPricingMethodology().equals("wholeTier")){
                                double requiredRate=calculateWholeTier(rate,value);
                                double price= requiredRate*value;
                                return price;
                            }else{
                                double requiredRate= calculateProgressiveTier(rate,value);
                                double price= requiredRate*value;
                                return price;
                            }

                        }

                    }
                    else{
                        System.out.println("Invalid Customer Code");
                    }
                }
                else{
                    System.out.println("Invalid Account Number");
                }
            }
            else {
                System.out.println("Invalid Product Code");
            }
        }
        else{
            System.out.println("Invalid Service Code");
        }

        return 0;
    }

    private double calculateProgressiveTier(Rate rate, double number) {
        double requiredRate = 0;
        int[] min = rate.getMin();
        int[] max = rate.getMax();
        double[] rateBand = rate.getRate();
        for (int i = 0; i < min.length; i++) {
            if (number >= min[i] && number < max[i]) {
                for(int j=i;j>=0;j--){
                    requiredRate += rateBand[j] ;
                }
                break;
            }
        }
        return requiredRate;
    }

    private double calculateWholeTier(Rate rate, double number) {
        double requiredRate = 0;
        int[] min = rate.getMin();
        int[] max = rate.getMax();
        double[] rateBand = rate.getRate();
        for (int i = 0; i < min.length; i++) {
            if (number >= min[i] && number < max[i]) {
                requiredRate = rateBand[i];
                break;
            }
        }
        return requiredRate;

    }
}
