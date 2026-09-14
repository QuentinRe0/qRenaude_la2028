package sio.la2028.model;

import java.util.ArrayList;

public class Epreuve {
    private int id;
    private String nom;
    private ArrayList<Sport> lesSports;

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

    public ArrayList<Sport> getLesSports() {
        return lesSports;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setLesSports(ArrayList<Sport> lesSports) {
        this.lesSports = lesSports;
    }

    public void addSport(Sport s){

        if (lesSports == null){
            lesSports = new ArrayList<Sport>();
        }
        lesSports.add(s);
    }
}



