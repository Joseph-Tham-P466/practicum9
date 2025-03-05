package edu.iu.p466.prime_service.model;

import jakarta.persistence.*;

@Table
@Entity
public class Customer {
    @Id
    private String username;
    private String password;

    public Customer(String username, String password) {
        this.username = username;
        this.password = password;
    }
    public Customer() {

    }
    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getUsername() {
        return this.username;
    }
}
