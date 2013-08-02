<cfscript>
/**
* 
* This file is part of MuraDisqus
*
* Copyright 2013 Stephen J. Withington, Jr.
* Licensed under the Apache License, Version v2.0
* http://www.apache.org/licenses/LICENSE-2.0
*
*/
</cfscript>
<style type="text/css">
	#bodyWrap h3{padding-top:1em;}
	#bodyWrap ul{padding:0 0.75em;margin:0 0.75em;}
</style>
<cfsavecontent variable="body"><cfoutput>
<div id="bodyWrap">
	<h1>#HTMLEditFormat(pluginConfig.getName())#</h1>
	
	<h2>Overview</h2>
	<p>This is a <a href="http://getmura.com">Mura CMS</a> plugin that makes adding <a href="http://disqus.com">Disqus</a> comments to your site easy as pie.</p>

	<h2>Instructions</h2>

	<h3>Plugin Display Objects</h3>
	<p>There is one display object available:</p>

	<ul>
		<li><strong>Disqus Comments</strong>
			<ol>
				<li>Go to the <strong>Edit Content</strong> screen of a content item (e.g., a Folder such as 'News' or 'Blog')</li>
				<li>Select the <strong>Layout &amp; Objects</strong> tab</li>
				<li>Select <strong>Plugins</strong> from the Available Content Objects select menu</li>
				<li>Select <strong>MuraDisqus</strong> from the list of Plugins</li>
				<li>Select <strong>Disqus Comments</strong> and assign it to your desired display region (e.g., Left Column, Main Content, etc.)</li>
				<li>This should launch the <strong>MuraDisqus Configurator</strong> window</li>
				<li>Paste/Enter your Disqus Shortname in the form field</li>
				<li>Click <strong>Save</strong></li>
				<li>Then, Publish your content and preview</li>
			</ol>
		</li>
	</ul>
	<p>Please note that this display object will not appear on Folders, Calendars or Galleries which is how the baked-in Mura Comment display object works. However, this allows you to assign it to a 'Folder' and then it can get inherited to any children of that Folder.</p>

	<h2>Designers / Developers</h2>
	<p>The 'Plugin Display Objects' may also be added directly onto your template or even dropped into a content region using <strong>[mura]</strong> tags.</p>

	<h3>Example Code</h3>

	<h4>Mura Tag Method</h4>
	<pre class="notice">[mura]$.disqus('YourDisqusShortnameGoesHere')[/mura]</pre>

	<h4>CFML Method</h4>
	<pre class="notice">##$.disqus(mgcURL='YourDisqusShortname')##</pre>



	<h3>Tested With</h3>
	<ul>
		<li>Mura CMS Core Version <strong>6.0+</strong></li>
		<li>Adobe ColdFusion <strong>10.0.9</strong></li>
		<li>Railo <strong>4.0.4</strong></li>
	</ul>

	<h3>Need help?</h3>
	<p>If you're running into an issue, please let me know at <a href="https://github.com/stevewithington/#HTMLEditFormat(pluginConfig.getPackage())#/issues">https://github.com/stevewithington/#HTMLEditFormat(pluginConfig.getPackage())#/issues</a> and I'll try to address it as soon as I can.</p>
	
	<p>Cheers!<br />
	<a href="http://stephenwithington.com">Steve Withington</a></p>
</div>
</cfoutput></cfsavecontent>
<cfoutput>
	#$.getBean('pluginManager').renderAdminTemplate(
		body = body
		, pageTitle = pluginConfig.getName()
	)#
</cfoutput>