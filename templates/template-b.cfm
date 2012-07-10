<cfsetting enablecfoutputonly="true">
<!--- ----------------------------------------------------------------------------------------------------
	Author:		Joris de Beer (jorisdebeer@mac.com)
	Created:	10 Jan 2011
	File:		normal.cfm
	Purpose:	template for regular pages of the site. Does not require login
---------------------------------------------------------------------------------------------------- --->
<cfparam name="ATTRIBUTES.pagetitle" default="#CGI.CF_TEMPLATE_PATH#" type="string" />
<cfparam name="ATTRIBUTES.stylesheet" default="#APPLICATION.pathname#/assets/default.css" type="string" />
<cfparam name="ATTRIBUTES.active" default="" type="string" />
<cfparam name="ATTRIBUTES.sidebar" default="true" type="boolean" />

<cfsetting enablecfoutputonly="false">
<cfif thistag.executionmode eq "start">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<cfinclude template="/CFTemplate/includes/head.cfm">
	</head>

	<body id="<cfoutput>#ATTRIBUTES.active#</cfoutput>">

	<!-- START: page ---------------------------------------------------- -->
	<div id="page">
		<cfinclude template="/CFTemplate/includes/masthead.cfm">
		<!-- START: content -------------------------------------------- -->
		<div id="content">

<!--- Content will go in here --->
<cfelse>

		</div>
		<!-- END: content ---------------------------------------------------- -->
		
		<cfinclude template="/CFTemplate/includes/footer.cfm">

	</div>
	<!-- END: page ------------------------------------------------------------ -->

	</body>
</html>
</cfif>