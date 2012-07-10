<cfcomponent output="false">
    <cfset THIS.Name = "CFTemplate" />
	<cfset THIS.mappings = StructNew() />
	<cfset THIS.mappings["/" & THIS.name] = GetDirectoryFromPath(GetCurrentTemplatePath()) >
	<cfset THIS.pathname = GetDirectoryFromPath(CGI.Script_Name) />
    

	<!--- -----------------------------------------------------------------------------------------
	Function:	onApplicationStart()
	Description:Run when application starts up
	------------------------------------------------------------------------------------------ --->
	<cffunction name="onApplicationStart" returnType="boolean" output="false" hint="Run when application starts up">
		<cfset StructAppend(APPLICATION, APPLICATION.GetApplicationSettings(), "yes") >
		<cfreturn true>
	</cffunction>

	<!--- -----------------------------------------------------------------------------------------
	Function:	onApplicationEnd(applicationScope)
	Description:Run when application stops
	------------------------------------------------------------------------------------------ --->
	<cffunction name="onApplicationEnd" returnType="void" output="false" hint="Run when application stops">
		<cfargument name="applicationScope" required="true">
		<cflog file="#THIS.name#" type="Information" text="Application #THIS.name# ended."/>
	</cffunction>

	<!--- -----------------------------------------------------------------------------------------
	Function:	onRequestStart(thePage)
	Description:Run before the request is processed
	------------------------------------------------------------------------------------------ --->
	<cffunction name="onRequestStart" returnType="boolean" output="false" hint="Run before the request is processed">
		<!--- Handle any requests to restart the application --->
		<cfif StructKeyExists( URL , "restart") >
			<cfset THIS.onApplicationEnd( APPLICATION )  />
			<cfset THIS.onApplicationStart()  />
		</cfif>
		<cfreturn true>
	</cffunction>


</cfcomponent>
