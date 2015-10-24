<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="${resource(dir:'javascripts',file:'bower_components/webcomponentsjs/webcomponents.min.js')}"></script>
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="normalize.css"/>
  		<asset:stylesheet src="application.css"/>
		<%--<asset:javascript src="application.js"/>
		--%>
		<link rel="import" href="${resource(dir:'bower_components',file:'paper-toolbar/paper-toolbar.html')}"/>
		<link rel="import" href="${resource(dir:'bower_components',file:'paper-card/paper-card.html')}"/>
		<link rel="import" href="${resource(dir:'bower_components',file:'paper-button/paper-button.html')}"/>
		<style type="text/css">
			html {
			  font-family: sans-serif; /* 1 */
			  -ms-text-size-adjust: 100%; /* 2 */
			  -webkit-text-size-adjust: 100%; /* 2 */
			}
			
		</style>
		<g:layoutHead/>
	</head>
	<body class="unresolved">
		<paper-toolbar>	
		<div id="grailsLogo" role="banner"><asset:image src="grails_logo.png" alt="Grails"/></div>	  
		  <div class="title">Simple Blog Application</div>
		</paper-toolbar>
		
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
