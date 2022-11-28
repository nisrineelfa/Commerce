/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "client")

public class Client extends User {

    @OneToMany
    private List<Commande> commande;
 private String nom, prenom, tele, adresse;
 
    public Client() {
    }

    public Client(String nom, String prenom, String tele, String adresse) {
        this.nom = nom;
        this.prenom = prenom;
        this.tele = tele;
        this.adresse = adresse;
    }

    public Client(String nom, String prenom, String tele, String adresse, String email, String password) {
        super(email, password);
        this.nom = nom;
        this.prenom = prenom;
        this.tele = tele;
        this.adresse = adresse;
    }

  

    public List<Commande> getCommande() {
        return commande;
    }

    public void setCommande(List<Commande> commande) {
        this.commande = commande;
    }

}
