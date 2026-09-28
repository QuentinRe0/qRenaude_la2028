package sio.la2028.database;

import sio.la2028.model.Athlete;
import sio.la2028.model.Pays;
import sio.la2028.model.Sport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

public class DaoSport {

    Connection cnx;
    static PreparedStatement requeteSql = null;
    static ResultSet resultatRequete = null;

    public static ArrayList<Sport> getLesSports(Connection cnx){

        ArrayList<Sport> lesSports = new ArrayList<Sport>();
        try{
            requeteSql = cnx.prepareStatement("select * from sport");
            //System.out.println("REQ="+ requeteSql);
            resultatRequete = requeteSql.executeQuery();

            while (resultatRequete.next()){

                Sport s = new Sport();
                s.setId(resultatRequete.getInt("id"));
                s.setNom(resultatRequete.getString("nom"));

                lesSports.add(s);
            }

        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesSports e généré une erreur");
        }
        return lesSports;

    }

    public static Sport getSportById(Connection cnx, int idSport){

        Sport s = new Sport();
        try{
            requeteSql = cnx.prepareStatement("select * from sport"+
                    " where id = ? ");

            //System.out.println("REQ="+ requeteSql);
            requeteSql.setInt(1,idSport);
            resultatRequete = requeteSql.executeQuery();

            if (resultatRequete.next()){

                s.setId(resultatRequete.getInt("id"));
                s.setNom(resultatRequete.getString("nom"));
                s.setPhoto(resultatRequete.getString("photo"));


            }

        }
        catch (SQLException e){
            e.printStackTrace();
            System.out.println("La requête de getLesPompiers e généré une erreur");
        }
        return s;
    }

    public static ArrayList<Athlete> getAthleteBySportId(Connection cnx, int idSport){

        ArrayList<Athlete> lesAthletes = new ArrayList<>();
        try{
            requeteSql = cnx.prepareStatement("select a.id as a_id, a.prenom as a_prenom, a.nom as a_nom, a.date_naiss as a_dateNaiss,   s.id as s_id, s.nom as s_nom from athlete "+
                    "a inner join sport s " +
                    " on a.sport_id = s.id " +
                    " where s.id = ? ");

            //System.out.println("REQ="+ requeteSql);
            requeteSql.setInt(1,idSport);
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


    public static Sport addSport(Connection connection, Sport spo){
        int idGenere = -1;
        try
        {
            //preparation de la requete
            // id (clé primaire de la table athlete) est en auto_increment,donc on ne renseigne pas cette valeur
            // la paramètre RETURN_GENERATED_KEYS est ajouté à la requête afin de pouvoir récupérer l'id généré par la bdd (voir ci-dessous)
            // supprimer ce paramètre en cas de requête sans auto_increment.
            requeteSql=connection.prepareStatement("INSERT INTO sport (nom)\n" +
                    "VALUES (?)", requeteSql.RETURN_GENERATED_KEYS );
            requeteSql.setString(1, spo.getNom());

            /* Exécution de la requête */
            requeteSql.executeUpdate();

            // Récupération de id auto-généré par la bdd dans la table client
            resultatRequete = requeteSql.getGeneratedKeys();
            while ( resultatRequete.next() ) {
                idGenere = resultatRequete.getInt( 1 );
                spo.setId(idGenere);

                spo = DaoSport.getSportById(connection, spo.getId());
            }


        }
        catch (SQLException e)
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return spo ;
    }
}
