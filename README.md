#MuraDisqus

##Overview
This is a [Mura CMS](http://getmura.com) plugin that makes adding [Disqus](http://disqus.com) comments to your site easy as pie.


##Instructions

###Plugin Display Objects
There is one display object available:

*	**Disqus Comments**
	
	- Go to the **Edit Content** screen of a content item (e.g., a Folder such as 'News' or 'Blog')
	- Select the **Layout &amp; Objects** tab
	- Select **Plugins** from the Available Content Objects select menu
	- Select **MuraDisqus** from the list of Plugins
	- Select **Disqus Comments** and assign it to your desired display region (e.g., Left Column, Main Content, etc.)
	- This should launch the **MuraDisqus Configurator** window
	- Paste/Enter your Disqus Shortname in the form field
	- Click **Save**
	- Then, Publish your content and preview

Please note that this display object will not appear on Folders, Calendars or Galleries which is how the baked-in Mura Comment display object works. However, this allows you to assign it to a 'Folder' and then it can get inherited to any children of that Folder.

##Designers / Developers
The 'Plugin Display Objects' may also be added directly onto your template or even dropped into a content region using **[mura]** tags.

###Example Code

**Mura Tag Method**

	[mura]$.disqus('YourDisqusShortnameGoesHere')[/mura]

**CFML Method**

	#$.disqus('YourDisqusShortnameGoesHere')#


##Tested With
* Mura CMS Core Version 6.0+
* Adobe ColdFusion 10.0.9
* Railo 4.0.4


##License
Copyright 2013 Stephen J. Withington, Jr.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this work except in compliance with the License. You may obtain a copy of the License in the LICENSE file, or at:

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.