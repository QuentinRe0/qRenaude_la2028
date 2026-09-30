package sio.la2028.database;

import sio.la2028.model.Athlete;
import sio.la2028.model.Epreuve;
import sio.la2028.model.Pays;
import sio.la2028.model.Sport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

public class DaoEpreuve {

    Connection cnx;
    static PreparedStatement requeteSql = null;
    static ResultSet resultatRequete = null;

    public static ArrayList<Epreuve> getLesEpreuves(Connection cnx) {

        ArrayList<Epreuve> lesEpreuves = new ArrayList<Epreuve>();
        try {
            requeteSql = cnx.prepareStatement("select e.id as e_id, e.nom as e_nom,  s.id as s_id, s.nom as s_nom " +
                    " from epreuve e inner join sport s " +
                    " on e.id_sport = s.id ");
            //System.out.println("REQ="+ requeteSql);
            resultatRequete = requeteSql.executeQuery();

            while (resultatRequete.next()) {

                Epreuve e = new Epreuve();
                e.setId(resultatRequete.getInt("e_id"));
                e.setNom(resultatRequete.getString("e_nom"));


                Sport s = new Sport();
                s.setId(resultatRequete.getInt("s_id"));
                s.setNom(resultatRequete.getString("s_nom"));

                e.setSport(s);


                lesEpreuves.add(e);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("La requête de getLesEpreuves e généré une erreur");
        }
        return lesEpreuves;
    }

    public static Epreuve getEpreuveById(Connection cnx, int idEpreuve){

        Epreuve e = new Epreuve();
        try{
            requeteSql = cnx.prepareStatement("select e.id as e_id, e.nom as e_nom,  s.id as s_id, s.nom as s_nom " +
                    " from epreuve e inner join sport s " +
                    " on e.id_sport = s.id " +
                    " where e.id = ? ");

            //System.out.println("REQ="+ requeteSql);
            requeteSql.setInt(1,idEpreuve);
            resultatRequete = requeteSql.executeQuery();

            if (resultatRequete.next()){

                e.setId(resultatRequete.getInt("e_id"));
                e.setNom(resultatRequete.getString("e_nom"));


                Sport s = new Sport();
                s.setId(resultatRequete.getInt("s_id"));
                s.setNom(resultatRequete.getString("s_nom"));

                e.setSport(s);


            }

        }
       catch (SQLException ex){
           ex.printStackTrace();
           System.out.println("La requête de getEpreuve e généré une erreur");
        }
        return e;
    }

    public static ArrayList<Athlete> getAthleteByEpreuveId(Connection cnx, int idEpreuve){

        ArrayList<Athlete> lesAthletes = new ArrayList<>();
        try{
            requeteSql = cnx.prepareStatement("select a.id as a_id, a.prenom as a_prenom, a.nom as a_nom, a.date_naiss as a_dateNaiss, s.id as s_id, s.nom as s_nom, e.id as e_id, e.nom as e_nom " +
                    "from athlete a "+
                    "inner join sport s " +
                    "on a.sport_id = s.id " +
                    "inner join epreuve e " +
                    "on s.id = e.id_sport " +
                    "where e.id = ? ");

            //System.out.println("REQ="+ requeteSql);
            requeteSql.setInt(1,idEpreuve);
            resultatRequete = requeteSql.executeQuery();

            while (resultatRequete.next()){

                Athlete a = new Athlete();
                a.setId(resultatRequete.getInt("a_id"));
                a.setPrenom(resultatRequete.getString("a_prenom"));
                a.setNom(resultatRequete.getString("a_nom"));
                a.setDateNaiss(resultatRequete.getObject("a_dateNaiss", LocalDate.class));

                lesAthletes.add(a);

            }

        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesPompiers e généré une erreur");
        }
        return lesAthletes;
    }


    public static Epreuve addEpreuve(Connection connection, Epreuve epr){
        int idGenere = -1;
        try
        {
            //preparation de la requete
            // id (clé primaire de la table athlete) est en auto_increment,donc on ne renseigne pas cette valeur
            // la paramètre RETURN_GENERATED_KEYS est ajouté à la requête afin de pouvoir récupérer l'id généré par la bdd (voir ci-dessous)
            // supprimer ce paramètre en cas de requête sans auto_increment.
            requeteSql=connection.prepareStatement("INSERT INTO epreuve (nom, id_sport)\n" +
                    "VALUES (?,?)", requeteSql.RETURN_GENERATED_KEYS );
            requeteSql.setString(1, epr.getNom());
            requeteSql.setInt(2, epr.getSport().getId());

            /* Exécution de la requête */
            requeteSql.executeUpdate();

            // Récupération de id auto-généré par la bdd dans la table client
            resultatRequete = requeteSql.getGeneratedKeys();
            while ( resultatRequete.next() ) {
                idGenere = resultatRequete.getInt( 1 );
                epr.setId(idGenere);

                epr = DaoEpreuve.getEpreuveById(connection, epr.getId());
            }


        }
        catch (SQLException e)
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return epr ;
    }

            }




