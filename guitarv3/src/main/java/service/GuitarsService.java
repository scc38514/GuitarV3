package service;

import java.util.List;
import scc.dao.GuitarsDao;
import scc.dao.dataAccess;
import scc.entity.GuitarSpec;
import scc.entity.Guitars;

public class GuitarsService {

	private GuitarsDao guitarsDao=dataAccess.createGuitarsDao();
	
	public List<Guitars> search(GuitarSpec spec) {
		// TODO Auto-generated method stub
		return guitarsDao.search(spec);
	}

	public GuitarsDao getGuitarDao() {
		return guitarsDao;
	}

	public void setGuitarsDao(GuitarsDao guitarsDao) {
		this.guitarsDao = guitarsDao;
	}

	public boolean add(Guitars guitars){
		return guitarsDao.add(guitars);
	}
	public boolean delete(Guitars guitars){
		return guitarsDao.delete(guitars);
	}
}