/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 *
 * @author NISRINE EL
 */
@Entity

public class Marque implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
       private int id;
    private String nom;
    @OneToMany
    private List<Produit> produits;

    public Marque() {
    }

    public Marque(String nom) {
        this.nom = nom;
    }

    public Marque(String nom, List<Produit> produits) {
        this.nom = nom;
        this.produits = produits;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    @Override
    public String toString() {
        return "Marque{" + "id=" + id + ", nom=" + nom + ", produits=" + produits + '}';
    }

   

    
}
