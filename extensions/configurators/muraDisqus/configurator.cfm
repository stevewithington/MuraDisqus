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
	$ = StructKeyExists(session, 'siteid') ? 
		application.serviceFactory.getBean('$').init('session.siteid') : 
		application.serviceFactory.getBean('$').init('default');

	rbFactory = application.MuraGoogleCalendar.getResourceBundleFactory($);

	params = IsJSON($.event('params')) ? DeSerializeJSON($.event('params')) : {};
	defaultParams = {
		disqusShortname = ''
	};
	StructAppend(params, defaultParams, false);
</cfscript>
<cfoutput>
	<div id="availableObjectParams"	data-object="plugin" data-name="muraDisqus" data-objectid="#$.event('objectID')#">
		<div class="row-fluid">
			<div class="control-group">
				<label for="disqusShortname" class="control-label">Disqus Shortname</label>
				<p>If you don't know your Disqus Shortname, log into (or create) your account at <a href="http://disqus.com" target="_blank">Disqus.com &gt;</a></p>
				<div class="controls">
					<input type="text" 
						name="disqusShortname" 
						id="disqusShortname" 
						class="objectParam span12" 
						value="#params.disqusShortname#">
				</div>
			</div>
		</div>
		<input type="hidden" name="configuredDTS" class="objectParam" value="#Now()#" />
		<input type="hidden" name="configuredBy" class="objectParam" value="#HTMLEditFormat($.currentUser('LName'))#, #HTMLEditFormat($.currentUser('FName'))#" />
	</div>
</cfoutput>