package com.zafin.CanddellaBank.dto;

import com.zafin.CanddellaBank.entities.Account;
import com.zafin.CanddellaBank.entities.Customer;
import com.zafin.CanddellaBank.entities.Product;
import com.zafin.CanddellaBank.entities.Service;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
public class TransactionRequest {
    @Id
    private long id;

    private long customerCode;

    private long AccountNumber;

    private String productCode;

    private String serviceCode;

    private double value;

    private double volume;

    private String dateOfTransaction;

    private double fees;

    @Override
    public String toString() {
        return "TransactionRequest{" +
                "id=" + id +
                ", customerCode=" + customerCode +
                ", AccountNumber=" + AccountNumber +
                ", productCode='" + productCode + '\'' +
                ", serviceCode='" + serviceCode + '\'' +
                ", value=" + value +
                ", volume=" + volume +
                ", dateOfTransaction=" + dateOfTransaction +
                ", fees=" + fees +
                '}';
    }
}
