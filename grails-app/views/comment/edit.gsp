<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>Create Comment</title>
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
  		 <h2>Create a comment</h2>
  		 <g:link controller="post" action="index" class="button" style="text-decoration:none; float:right; margin-top:-60px;">Cancel</g:link>  		 
  	</div>
  </div>
  <div id="validationerrors">
      <g:renderErrors bean="${comment}"/>
  </div>
  <g:form controller="comment" action="save">
      <g:hiddenField name="postId" value="${postId}"/>
      <dl>
          <dt>Your name:</dt>
          <dd>
          <g:textField name="commentator.name" value="${comment.commentator.name}"/>
          </dd>
          <dt>Your email:</dt>
          <dd>
          <g:textField name="commentator.email" value="${comment.commentator.email}"/>
          </dd>
          
          <dt>Add your comment:</dt>
          <dd>
          <g:textArea name="comment" value="${comment.comment}" rows="20" cols="50"/>
          </dd>
      </dl>
        <g:submitButton name="submit" value="Save"/>
  </g:form>
  </body>
</html>