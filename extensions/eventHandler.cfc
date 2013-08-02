/**
* 
* This file is part of MuraDisqus
*
* Copyright 2013 Stephen J. Withington, Jr.
* Licensed under the Apache License, Version v2.0
* http://www.apache.org/licenses/LICENSE-2.0
*
*/
component accessors=true extends='mura.plugin.pluginGenericEventHandler' output=false {

	property name='$' hint='mura scope';

	include '../plugin/settings.cfm';

	public any function onApplicationLoad(required struct $) {
		variables.pluginConfig.addEventHandler(this);
		set$(arguments.$);
		lock scope='application' type='exclusive' timeout=10 {
			application[variables.settings.pluginName] = new contentRenderer(arguments.$);
		};
	}

	public any function onSiteRequestStart(required struct $) {
		var contentRenderer = new contentRenderer(arguments.$);
		arguments.$.setCustomMuraScopeKey(variables.settings.pluginName, contentRenderer);
		arguments.$.getContentRenderer().injectMethod('disqus', disqus);
		set$(arguments.$);
	}

	public any function disqus(string disqusShortname='') {
		return variables.$.MuraDisqus.dspMuraDisqus(arguments.disqusShortname);
	}

}