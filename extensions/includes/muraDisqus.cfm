<cfif IsDefined('local.disqus')><cfoutput>
<div id="disqus_thread"></div>
<script type="text/javascript">
	var disqus_shortname = '#local.disqus.shortname#', disqus_identifier = '#local.disqus.identifier#', disqus_title = '#Left(local.disqus.title, 200)#', disqus_url = '#local.disqus.url#';
	(function() {
		var dsq = document.createElement('script'); 
		dsq.type = 'text/javascript'; 
		dsq.async = true;
		dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
		(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
	})();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
</cfoutput></cfif>