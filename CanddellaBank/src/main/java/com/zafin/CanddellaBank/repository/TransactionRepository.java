package com.zafin.CanddellaBank.repository;

import com.zafin.CanddellaBank.entities.Service;
import com.zafin.CanddellaBank.entities.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TransactionRepository extends JpaRepository<Transaction, Long> {
}
