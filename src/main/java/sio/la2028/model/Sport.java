package sio.la2028.model;

import java.util.ArrayList;

public class Sport {
    private int id;
    private String nom ;
    private ArrayList<Athlete> lesAthletes ;
    private ArrayList<Epreuve> lesEpreuves ;
    private  Site site;


    public Sport() {
        this.id = id;
        this.nom = nom;
    }

    public Sport(int id) {

    }

    public Sport(int id, String nom, ArrayList<Athlete> lesAthletes, ArrayList<Epreuve> lesEpreuves, Site site) {
        this.id = id;
        this.nom = nom;
        this.site = site;
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

    public ArrayList<Athlete> getLesAthletes() {
        return lesAthletes;
    }

    public void setLesAthletes(ArrayList<Athlete> lesAthletes) {
        this.lesAthletes = lesAthletes;
    }

    public void addAthlete(Athlete a){

        if (lesAthletes == null){
            lesAthletes = new ArrayList<Athlete>();
        }
        lesAthletes.add(a);
    }

    public ArrayList<Epreuve> getLesEpreuves() {
        return lesEpreuves;
    }

    public void setLesEpreuves(ArrayList<Epreuve> lesEpreuves) {
        this.lesEpreuves = lesEpreuves;
    }

    public Site getSite() {
        return site;
    }

    public void setSite(Site site) {
        this.site = site;
    }
}


