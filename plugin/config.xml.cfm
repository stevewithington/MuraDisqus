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
	include 'settings.cfm';
</cfscript>
<cfoutput>
<plugin>
	<name>#variables.settings.pluginName#</name>
	<package>#variables.settings.package#</package>
	<directoryFormat>packageOnly</directoryFormat>
	<loadPriority>#variables.settings.loadPriority#</loadPriority>
	<version>#variables.settings.version#</version>
	<provider>#variables.settings.provider#</provider>
	<providerURL>#variables.settings.providerURL#</providerURL>
	<category>#variables.settings.category#</category>
	<settings></settings>
	<eventHandlers>
		<eventHandler event="onApplicationLoad" component="extensions.eventHandler" persist="false" />
	</eventHandlers>
		<displayobjects location="global">
			<displayobject
				name="Disqus Comments"  
				component="extensions.contentRenderer"
				displaymethod="dspConfiguredMuraDisqus"
				configuratorJS="extensions/configurators/muraDisqus/configurator.js"
				configuratorInit="initMuraDisqusConfigurator"
				persist="false" />
		</displayobjects>
	</plugin>
</cfoutput>