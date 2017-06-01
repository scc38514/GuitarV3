package GuitarsTest;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

import scc.dbutil.mysqlDbUtil;
import scc.entity.GuitarSpec;
import scc.entity.Guitars;

public class DbutilTest {
	@Test
	public void test() {
		mysqlDbUtil dbUtil=new mysqlDbUtil();
	       Guitars guitars=null;
	        ResultSet rs=dbUtil.executeQuery("select * from guitar",new Object[]{});
	        try {
	            while(rs.next()){
	            	guitars =new Guitars(null, 0, null);
	                String serialNumber=rs.getString(1);
	                Double price=rs.getDouble(2);
	                GuitarSpec spec1=new GuitarSpec();	
	                spec1.setBuilder(rs.getString(3));
	                spec1.setModel(rs.getString(4));
	                spec1.setType( rs.getString(5));
	                spec1.setNumStrings(rs.getString(6));
	                spec1.setBackWood( rs.getString(7));
	                spec1.setTopWood( rs.getString(8));
	                guitars.setSerialNumber(serialNumber);
	                guitars.setPrice(price);
	                guitars.setSpec(spec1);
	                System.out.println(guitars.getSerialNumber()+ " " +guitars.getPrice()
	                +guitars.getSpec().getBuilder()+ " " +guitars.getSpec().getModel()+ " " 
	                +guitars.getSpec().getType()+ " " +guitars.getSpec().getNumStrings()+ " "
	                +guitars.getSpec().getBackWood()+ " " +guitars.getSpec().getTopWood()+"\n");
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();	        	
	        }
            System.out.println("These are data from mysqlDB.");
	}
}
