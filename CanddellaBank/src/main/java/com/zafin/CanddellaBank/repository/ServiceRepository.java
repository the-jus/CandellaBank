package com.zafin.CanddellaBank.repository;


import com.zafin.CanddellaBank.entities.Service;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ServiceRepository  extends JpaRepository<Service, String> {

    Service findByServiceCode(String serviceCode);

}
