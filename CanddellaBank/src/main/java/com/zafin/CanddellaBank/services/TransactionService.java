package com.zafin.CanddellaBank.services;

import com.zafin.CanddellaBank.dto.TransactionRequest;

public interface TransactionService {
    public double calculateRates(TransactionRequest transactionRequest);
}
