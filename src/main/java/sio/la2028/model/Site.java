package sio.la2028.model;

import java.util.ArrayList;

public class Site {
    private int id;
    private String nom ;
    private String emplacement ;
    private ArrayList<Sport> lesSports ;

    public Site(int id, String nom, String emplacement) {
        this.id = id;
        this.nom = nom;
        this.emplacement = emplacement;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getEmplacement() {
        return emplacement;
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

    public void setEmplacement(String emplacement) {
        this.emplacement = emplacement;
    }

    public void setLesSports(ArrayList<Sport> lesSports) {
        this.lesSports = lesSports;
    }
}
