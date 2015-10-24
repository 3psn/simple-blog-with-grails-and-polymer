package akash.demo.simpleblog

import java.util.SortedSet;

class Post {
	
	static hasMany = [comments: Comment]
	String title
	String content
	Date lastUpdated
	Boolean published = false
	SortedSet comments
	
    static constraints = {
		title(nullable:false, blank:false, length:1..50)		
		content(nullable:false, blank:false)
		lastUpdated(nullable:true)
		published(nullable:false)
    }
	
	static mapping = {
		content type: "text"
	}
}
