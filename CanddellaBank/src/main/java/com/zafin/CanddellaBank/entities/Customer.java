package com.zafin.CanddellaBank.entities;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long customerId;
    private String firstName;

    private String lastName;

/*@ManyToOne
@JoinColumn(name = "product_code")
private Product product;*/

    private String phoneNumber;

    private String email;
    private long accountNumber;
}
