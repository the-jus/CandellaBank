package com.zafin.CanddellaBank.entities;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Rate {

        @Id
        private String rateCode;
        private String rateDescription;
        private String rateType;
        private String pricingMethodology;
        private String basedOn;
        private int[] min;
        private int[] max;
        private double[] rate;

        @OneToOne(mappedBy = "rate", cascade = CascadeType.ALL)
        private Service service;
}
