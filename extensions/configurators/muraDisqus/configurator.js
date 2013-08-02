/**
* 
* This file is part of MuraDisqus
*
* Copyright 2013 Stephen J. Withington, Jr.
* Licensed under the Apache License, Version v2.0
* http://www.apache.org/licenses/LICENSE-2.0
*
*/
function initMuraDisqusConfigurator(data) {

	initConfigurator(data,{
		url: '../plugins/MuraDisqus/extensions/configurators/muraDisqus/configurator.cfm'
		, pars: ''
		, title: 'Disqus Comments'
		, init: function(){}
		, destroy: function(){}
		, validate: function(){
			if ( !jQuery('#disqusShortname').val() ) {
				var response = alert('Your Disqus Shortname is Required.');
				return false;
			}
			return true;
		}
	});

	return true;

};