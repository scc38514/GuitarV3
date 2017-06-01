package scc.dao;
import java.util.List;

import scc.entity.GuitarSpec;
import scc.entity.Guitars;

public interface GuitarsDao {
	List<Guitars> search(GuitarSpec spec);
	public boolean add(Guitars guitars);
	public boolean delete(Guitars guitars);
}
