<cfimport taglib="templates" prefix="templates">
<templates:template-b stylesheet="#APPLICATION.pathname#/assets/custom.css">

<h1>Template B</h1>
<p>In template b, we specify a custom css file to override the default styles, and we omit the pagetitle attributes, so the template falls back to the default</p>
<p>All of the various attributes are set in the associated /templates/ file. These then feed onto the various includes. In you top level page (the one a visitor downloads), you put the attributes in the  templates tag.
<pre>
&lt;templates:template-b stylesheet="#APPLICATION.pathname#/assets/custom.css"&gt;
</pre>

<a href="using-template-a.cfm">Example using Template A</a><br />
<a href="using-template-b.cfm">Example using Template B</a><br />
<a href="README.md">ReadMe File</a><br />

</templates:template-b>