package ch.sunzof.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ch.sunzof.beans.Subtitle;

public class SubtitleDaoImpl implements SubtitleDao {

	private DaoFactory daoFactory;

	public SubtitleDaoImpl(DaoFactory daoFactory) {
		// TODO Auto-generated constructor stub
		this.daoFactory = daoFactory;
	}

	@Override
	public void ajouter(Subtitle subtitle) {
		// TODO Auto-generated method stub
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		try {
			connexion = daoFactory.getConnection();
			preparedStatement = connexion
					.prepareStatement("INSERT INTO subtitle (time, ligne1, ligne2, ligne3) VALUES (?, ?, ?, ?);");
			preparedStatement.setString(1, subtitle.getTime());
			preparedStatement.setString(2, subtitle.getLigne1());
			preparedStatement.setString(1, subtitle.getLigne2());
			preparedStatement.setString(1, subtitle.getLigne3());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Subtitle> lister() {
		// TODO Auto-generated method stub
		List<Subtitle> subtitles = new ArrayList<Subtitle>();
		Connection connexion = null;
		Statement statement = null;
		ResultSet resultat = null;

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.createStatement();
			resultat = statement.executeQuery("SELECT time, ligne1, ligne2, ligne3 FROM subtitle;");
			while (resultat.next()) {
				String time = resultat.getString("time");
				String ligne1 = resultat.getString("ligne1");
				String ligne2 = resultat.getString("ligne2");
				String ligne3 = resultat.getString("ligne3");
				Subtitle subtitle = new Subtitle();
				subtitle.setTime(time);
				subtitle.setLigne1(ligne1);
				subtitle.setLigne2(ligne2);
				subtitle.setLigne3(ligne3);
				subtitles.add(subtitle);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return subtitles;
	}
}
