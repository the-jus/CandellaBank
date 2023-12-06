package com.zafin.CanddellaBank.repository;

import com.zafin.CanddellaBank.entities.Account;
import com.zafin.CanddellaBank.entities.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Admin, Long> {
    Admin findByUsername(String username);
}
