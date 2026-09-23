package sio.la2028.database;

import sio.la2028.model.Athlete;
import sio.la2028.model.Site;
import sio.la2028.model.Sport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

public class DaoSite {

    Connection cnx;
    static PreparedStatement requeteSql = null;
    static ResultSet resultatRequete = null;

    public static ArrayList<Site> getLesSites(Connection cnx){

        ArrayList<Site> lesSites = new ArrayList<Site>();
        try{
            requeteSql = cnx.prepareStatement("select * from site");
            //System.out.println("REQ="+ requeteSql);
            resultatRequete = requeteSql.executeQuery();

            while (resultatRequete.next()){

                Site s = new Site();
                s.setId(resultatRequete.getInt("id"));
                s.setNom(resultatRequete.getString("nom"));
                s.setEmplacement(resultatRequete.getString("emplacement"));

                lesSites.add(s);
            }

        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesSports e généré une erreur");
        }
        return lesSites;

    }

    public static Site getSiteById(Connection cnx, int idSite){

        Site s = new Site();
        try{
            requeteSql = cnx.prepareStatement("select * from site"+
                    " where id = ? ");

            //System.out.println("REQ="+ requeteSql);
            requeteSql.setInt(1,idSite);
            resultatRequete = requeteSql.executeQuery();

            if (resultatRequete.next()){

                s.setId(resultatRequete.getInt("id"));
                s.setNom(resultatRequete.getString("nom"));
                s.setEmplacement(resultatRequete.getString("emplacement"));


            }

        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesPompiers e généré une erreur");
        }
        return s;
    }

    public static ArrayList<Sport> getSportBySiteId(Connection cnx, int idSite){

        ArrayList<Sport> lesSports = new ArrayList<>();
        try{
            requeteSql = cnx.prepareStatement("select sp.sport_id as sp_sport_id, sp.site_id as sp_site_id, s.id as s_id, s.nom as s_nom "+
                    " from `sport-site` sp inner join sport s " +
                    " on sp.sport_id = s.id " +
                    " inner join site si " +
                    " on sp.site_id = si.id " +
                    " where si.id = ? ");

            //System.out.println("REQ="+ requeteSql);
            requeteSql.setInt(1,idSite);
            resultatRequete = requeteSql.executeQuery();

            while (resultatRequete.next()){
                Sport s = new Sport();
                s.setId(resultatRequete.getInt("s_id"));
                s.setNom(resultatRequete.getString("s_nom"));

                lesSports.add(s);

            }

        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesPompiers e généré une erreur");
        }
        return lesSports;
    }

}
