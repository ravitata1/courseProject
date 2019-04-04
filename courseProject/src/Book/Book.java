package Book;

public class Book {
	
	//instance variables
	private String title;
	private String ISBN;
	private double price;
	private String author;
	private String link;
	
	//default constructor
	public Book(String t, String a, String i, String l){
		title = t;
		author = a;
		ISBN = i;
		// price = p;
		link = l;
	}
	
	//modifier method for title
	public void setTitle(String t)
	{
		title = t;
	}
	
	//accessor method for title
	public String getTitle()
	{
		return title;
	}
	
	//modifier method for ISBN
	public void setISBN(String i)
	{
		ISBN = i;
	}
	
	//accessor method for ISBN
	public String getISBN()
	{
		return ISBN;
	}
	
	//modifier method for author
	public void setAuthor(String a)
	{
		author = a;
	}
	
	//accessor method for author
	public String getAuthor()
	{
		return author;
	}
	
	//modifier method for price
	public void setPrice(double d)
	{
		price = d;
	}
	
	//accessor method for price
	public double getPrice()
	{
		return price;
	}
	
	//modifier method for link
	public void setLink(String l)
	{
		link = l;
	}
	
	//accessor method for link
	public String getLink()
	{
		return link;
	}
}
