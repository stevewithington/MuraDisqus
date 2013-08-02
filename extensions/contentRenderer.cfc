/**
* 
* This file is part of MuraDisqus
*
* Copyright 2013 Stephen J. Withington, Jr.
* Licensed under the Apache License, Version v2.0
* http://www.apache.org/licenses/LICENSE-2.0
*
*/
component accessors=true extends='mura.cfobject' output=false {

	property name='$';

	public any function init(required struct $) {
		set$(arguments.$);
		return this;
	}

	/* 
	* CONFIGURED DISPLAY OBJECTS
	* --------------------------------------------------------------------- */

	public string function dspMuraDisqus(string disqusShortname='') {
		var local = {};

		if ( !StructKeyExists(variables, '$') 
			|| !Len(arguments.disqusShortname) 
			|| ListFindNoCase('portal,folder,calendar', $.content('type')) 
			|| variables.$.event('muraDisqusExists') == true
		) {
			return '';
		}

		local.tracePoint = variables.$.initTracePoint('MuraDisqus.extensions.contentRenderer.cfc:dspMuraDisqus()');

		local.protocol = getPageContext().getRequest().getScheme();
		local.thisurl = local.protocol & '://' & variables.$.siteConfig('domain') & '/' & variables.$.content('filename') & '/';
		local.disqus = {
			shortname = arguments.disqusShortname
			, identifier = variables.$.content('contentid')
			, title = variables.$.content('title')
			, url = local.thisurl
		};

		savecontent variable='local.str' {
			include 'includes/muraDisqus.cfm';
		};

		variables.$.event('muraDisqusExists',true);
		variables.$.commitTracePoint(local.tracePoint);

		return local.str;
	}

	public any function dspConfiguredMuraDisqus(required struct $) {
		var local = {};
		set$(arguments.$);
		local.params = arguments.$.event('objectParams');
		local.defaultParams = { disqusShortname = '' };
		StructAppend(local.params, local.defaultParams, false);
		return dspMuraDisqus(argumentCollection=local.params);
	}

}