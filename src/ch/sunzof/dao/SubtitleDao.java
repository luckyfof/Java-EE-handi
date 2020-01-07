package ch.sunzof.dao;

import java.util.List;

import ch.sunzof.beans.Subtitle;

public interface SubtitleDao {
	public void ajouter(Subtitle subtitle);

	public List<Subtitle> lister();
}
