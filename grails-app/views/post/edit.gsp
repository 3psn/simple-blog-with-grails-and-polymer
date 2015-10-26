<%@ page contentType="text/html;charset=utf-8" %>
<html>
  <head>
      <title>Create/Edit Post</title>
      <meta name="layout" content="main"> 
  </head>
  <body>
  <div id="main-content">
  	<div id="header">
  		<h2>Create/ Edit post</h2>
  		<g:link controller="post" action="index" class="button" style="text-decoration:none; float:right; margin-top:-60px;">Cancel</g:link>
  	</div>
  	<div id="validationerrors">
      <g:renderErrors bean="${post}"/>
  </div>
  
  <g:form controller="post" action="save">
      <g:hiddenField name="id" value="${post.id}"/>
      <dl>
          <dt>Post Title:</dt>
          <dd>
          <g:textField name="title" value="${post.title}" size="50"/>
          </dd>
          <dt>Post:</dt>
          <dd>
          <g:textArea name="content" value="${post.content}" rows="20" cols="50"/>
          </dd>
      </dl>
        <g:submitButton name="submit" value="Save"/>
  </g:form>
  </div>
  
  </body>
</html>