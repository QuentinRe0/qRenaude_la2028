package sio.la2028.model;

import java.util.ArrayList;

public class Epreuve {
    private int id;
    private String nom;
    private Sport Sport;

    public Epreuve() {
    }

    public Epreuve(int id, String nom) {
        this.id = id;
        this.nom = nom;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }


    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Sport getSport() {
        return Sport;
    }

    public void setSport(Sport sport) {
        Sport = sport;
    }

}




