package com.zafin.CanddellaBank.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name="admin_user")
public class Admin {
    @Id
    private long id;

    private String email;

    private String username;

    private String passWord;
}
