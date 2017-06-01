package scc.dao;

public class dataAccess {
    private static String db="sqlite";
    public static GuitarsDao createGuitarsDao() {
		GuitarsDao result=null;
		switch (db) {
		case "sqlite":
			result=new scc.sqlitedao.GuitarsDaoJDBCImpl();
			break;
		   case "mysql":
		result=new scc.mysqldao.GuitarsDaoJDBCImpl();
			break;
		}
		return result;
	}
}
