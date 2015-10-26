<%@ page contentType="text/html;charset=UTF-8" %> 
<html> 
	<head> 
		<title>${post.title}</title> 
		<meta name="layout" content="main"> 
		<style>
			paper-button {
				display:inline-block !important;
				background: #E0F2F7;
			}
			paper-card {
		      margin-top: 16px;
		      background: #F6CECEl;
		    }
    		 .pink {
		      	--paper-card-header-color: #6E6E6E;
		      	background: #D8CEF6 !important;
		      	margin-left: 35px;
		    }
		</style>
	</head> 
	<body> 
		<div id="main-content">
			<div id="header">
				<h2>View post</h2>		
				<g:link controller="post" action="edit" id="${post.id}" class="button" style="text-decoration:none; margin-top:-60px;float:right;"> Edit post </g:link> 	
			</div>
			<paper-card heading="${post.title}" >
		      <div class="card-content">
		        ${post.content}
		      </div>
		      <div class="card-content">
		        Last Updated: ${post.lastUpdated}
		      </div>
		      <div class="card-actions">
		        	<g:link controller="comment" action="edit" params="[postId:post.id]"><paper-button raised class="colorful" >Add a comment</paper-button></g:link> 
		      </div>
		    </paper-card>
		    
		    <div id="comments">
		    	<h3 style="margin: 1em 0 1em 0; border-bottom: 1px solid #d6dce0; padding-bottom: 0.5em;">Comments</h3>
				<g:each in="${post.comments}" var="comment"> 
				    <paper-card class="pink">
				      <div class="card-content">
				        ${comment.comment}
				      </div>
				      <div class="card-content">
				       <p>Created by: ${comment.commentator.name} on ${comment.dateCreated}</p>
				      </div>
				    </paper-card>			
				</g:each> 
		    </div>		    
		</div>
	</body> 
</html>