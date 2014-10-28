package com.formation;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {

	public static void main(String[] args) {
		try {
			Class.forName("org.h2.Driver");
			System.out.println("Driver O.K.");

			final String url = "jdbc:h2:database/Ecole";
			final String user = "h2";
			final String passwd = "h2";

			final Connection conn = DriverManager.getConnection(url, user,
					passwd);
			System.out.println("Connexion effective !");

			// Pour réinitialiser la base, supprimer le fichier
			// database/Ecole.h2.db et decommenter la méthode suivante.
			// initDatabase(conn);

		} catch (final Exception e) {
			e.printStackTrace();
		}

	}

	private static void initDatabase(Connection conn) throws SQLException {
		System.out.println("Initialisation de la  base de donnée");
		final Statement state = conn.createStatement();
		final File file = new File("init.sql");
		String chaine = "";
		final String fichier = file.getAbsolutePath();
		try {
			final InputStream ips = new FileInputStream(fichier);
			final InputStreamReader ipsr = new InputStreamReader(ips);
			final BufferedReader br = new BufferedReader(ipsr);
			String ligne;
			while ((ligne = br.readLine()) != null) {
				chaine += ligne + "\n";
			}
			br.close();
		} catch (final Exception e) {
			System.out.println(e.toString());
		}
		state.executeUpdate(chaine);

	}

}
