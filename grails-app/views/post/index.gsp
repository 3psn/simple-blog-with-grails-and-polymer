<%@ page contentType="text/html;charset=UTF-8" %> 
<html> 
	<head> 
		<title>All Posts</title>
		<meta name="layout" content="main"> 
		
		<style>
			paper-button {
				display:inline-block !important;
				background: #E0F2F7;
			}
			paper-card {
		      width: 100%;
		      margin-top: 16px;
		      background: #F6CECEl;
		    }
    
		</style>
	</head> 
	<body> 
	 <div id="main-content">
	 	<div id="header">
	 		<h1 style="diaplay:inline">All posts</h1> 
	 		<g:link controller="post" action="edit" class="button" style="text-decoration:none; float:right; margin-top:-60px;"> Create a new post </g:link> 
	 	</div>
	 		
				
		<g:each in="${posts}" var="post"> 
			<paper-card heading="${post.title}" class="pink">
		      <div class="card-content">
		        ${post.content}
		      </div>
		      <div class="card-content">
		        Last Updated: ${post.lastUpdated}
		      </div>
		      <div class="card-actions">
		        	<g:link controller="post" action="view" id="${post.id}"><paper-button raised class="colorful" >View Post</paper-button></g:link> 
		      </div>
		    </paper-card>		
		</g:each> 
	  </div>
				
    </body> 
</html> 