package Problems;

abstract class Market{  
	  abstract void getPrice1();
	  abstract void getProductName1();  
	}  
 abstract class Product extends Market{
	int Price;
	String Name;
	public Product(int Price,String Name){
	this.Price=Price;
	this.Name=Name;
	}
	public void getPrice(){
	System.out.println(this.Price);
	}
	public void getProductName(){
	System.out.println(this.Name);
	}
	}