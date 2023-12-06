package com.zafin.CanddellaBank.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Getter
@Setter
public class Transaction {

    @Id
    private long transactionId;

    private long customerCode;

    private long accountNumber;

    private String productCode;

    private String serviceCode;

    @Column(name = "val_ue")
    private double value;

    private double volume;

    private String dateOfTransaction;

    private double fees;

}
