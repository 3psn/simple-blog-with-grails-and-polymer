package akash.demo.simpleblog

import java.util.Date;

class Comment implements Comparable{
	static belongsTo = Post
	
	Post post
	String comment
	Commentator commentator = new Commentator()
	Date dateCreated
	
	public int compareTo(Object o) {
		return dateCreated.compareTo(o.dateCreated)
	}
	

    static constraints = {
    }
	
	static mapping = {
		comment type: "text"
	}
}
