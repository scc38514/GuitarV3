package scc.action;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import scc.entity.GuitarSpec;
import scc.entity.Guitars;
import service.GuitarsService;

@SuppressWarnings("serial")
public class GuitarsAction extends ActionSupport {
	  
	private String serialNumber,builder, model, type, backWood, topWood,numStrings;
	private double price;
	  
	public String getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getBuilder() {
		return builder;
	}
	public void setBuilder(String builder) {
		this.builder = builder;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBackWood() {
		return backWood;
	}
	public void setBackWood(String backWood) {
		this.backWood = backWood;
	}
	public String getTopWood() {
		return topWood;
	}
	public void setTopWood(String topWood) {
		this.topWood = topWood;
	}
	public String getNumStrings() {
		return numStrings;
	}
	public void setNumStrings(String numStrings) {
		this.numStrings = numStrings;
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	List<Guitars> list=new LinkedList();
	 GuitarsService guitarsService=new GuitarsService();	
	 
	public String research() throws Exception{
		 GuitarSpec spec =new GuitarSpec();
		 spec.setBuilder(builder);
		 spec.setTopWood(topWood);
		 spec.setBackWood(backWood);
		 spec.setModel(model);
		 spec.setType(type);
		 spec.setNumStrings(numStrings);
		 list=guitarsService.search(spec);
		 ActionContext.getContext().getSession().put("GuitarsList", list);
		 return SUCCESS;
      }
	
	public String add() throws Exception{		
    	Guitars guitars =new Guitars(null, 0, null);
    	GuitarSpec spec=new GuitarSpec();
        spec.setBuilder(builder);
        spec.setModel(model);
        spec.setType(type);
        spec.setNumStrings(numStrings);
        spec.setBackWood(backWood);
        spec.setTopWood(topWood);
        guitars.setSerialNumber(serialNumber);
        guitars.setPrice(price);
        guitars.setSpec(spec);
        guitarsService.add(guitars);
		 return SUCCESS;
     }
	public String delete() throws Exception{		
    	Guitars guitars =new Guitars(null, 0, null);
    	guitars.setSerialNumber(serialNumber);
        guitarsService.delete(guitars);
		 return SUCCESS;	
	}
	}