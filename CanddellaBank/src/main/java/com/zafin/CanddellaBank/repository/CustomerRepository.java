package com.zafin.CanddellaBank.repository;

import com.zafin.CanddellaBank.entities.Account;
import com.zafin.CanddellaBank.entities.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
