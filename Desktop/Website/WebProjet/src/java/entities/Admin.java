/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "admin")
public class Admin extends User {

    public Admin() {
        
    }
    

    public Admin(String email, String password) {
        super(email, password);
    }

    
    


    
}
