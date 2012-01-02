---
layout: post
title: "A new desktop for a new year"
date: 2012-01-01 11:50
comments: true
author: Buddhika Siddhisena
published: true
categories: 
---

<div id="slides">
  <img src="http://farm8.staticflickr.com/7011/6610804679_62d58a3e30.jpg" alt="Simple, minimilistic Mint desktop" />
  <img src="http://farm8.staticflickr.com/7142/6610808595_cce80f4911.jpg" alt="Applications list" />
  <img src="http://farm8.staticflickr.com/7034/6610807425_909f80bff3.jpg" alt="Window select" />
  <img src="http://farm8.staticflickr.com/7013/6610806003_c4c8b40cfe.jpg" alt="Global Menu" />
</div>


Compared to other new years where I would spend some time cleaning up my room or [upgrading my gear](http://www.geekaholic.org/2007/12/christmas-came-early-for-me-this-year.html), this year I did none of that! Instead I invested some time cleaning up my online space starting with a brand new distro. I'm a [big fan of MacOSX's Lion desktop](http://www.geekaholic.org/2011/08/theres-something-about-lion.html) and wanted to bring some of that minimilistic simplicity to the Linux desktop. So if the above screenshot looks appealing, then read on to see how you too can get a modern desktop that is simple and elegant. Unlike some of my previous desktop customization article, I'll keep this one to the bare minimum so that you can implement it fairly quickly.

## Installing the base OS

IMHO, Gnome 3 is the best next thing when it comes to being a modern desktop. I realize this is a controversial statement, given news of [some ditching](http://linux.slashdot.org/story/11/08/04/0115232/linus-torvalds-ditches-gnome-3-for-xfce) and some [forking](http://www.zdnet.com/blog/open-source/linux-mints-cinnamon-a-gnome-3x-shell-fork) the project. But IMHO when you have a project that can polarize a community that was once united, it means you've got true innovation - not just incremental tweaks.

Having said all that, I've started with Linux [Mint 12](http://blog.linuxmint.com/?p=1889), as the base distro to build my minimilistic desktop even though Mint has many of the traditional Windows like UI elements. Now, I'm sure you could do this with Ubuntu 11.10, the base for Mint 12, but I like Mint due to their focus on usability where most of what I need work out of the box!

## Let the tweaking begin!

Don't worry I'll keep it to a minimum! The first thing I did was to get rid of the bottom taskbar completely, because its soo Windows 95 like! Fortunately, Gnome 3 comes with an "Advanced Settings App" (`gnome-tweak-tool` in CMD line) which uses the same iPhone like on-off toggles to do the job.

![Gnome 3 Advanced Settings App aka Gnome tweak tool](http://farm8.staticflickr.com/7160/6610969247_67299031a2_m.jpg)

> Goto Desktop section within Advanced Settings App.

	Have file manager handle the desktop -> ON
	Computer icon visible on desktop -> OFF
	Home icon visible on desktop -> OFF
	Network Servers icon visible on desktop -> OFF
	Trash icon visible on desktop -> ON
	Show mounted volumes on the desktop -> ON

From the above list if you decide you want to see the Computer and Home icons or perhaps not have any icons then go right ahead. I have my reasons for the above :)

> Goto Shell section and make sure every toggle is OFF

> Goto Shell Extensions

This is where we do most of the customizations. We will come back to this but for now:

	Menu Extension -> OFF
	Media Player Extension -> ON
	Smart Overview Extension -> ON
	Monitor Status Extension -> OFF
	Bottom Panel Extension -> OFF
	User Themes Extension -> ON
	noa11y Extension -> ON
	Alt Tab Extension -> ON
	Notification Extension -> ON
	Shutdown Menu Extension -> ON
	Window List Extension -> OFF

> Goto Theme section and select Mint-Z-Dark as the Shell theme

## Installing tweaks

As I'm running this distro on a 10" netbook, I wanted all the screen real-estate I can get. Besides running apps in full screen mode is all the rage these days! The other tweak that comes from the same repository, is to overlay an icon when viewing all open windows in the [Exposé view](http://en.wikipedia.org/wiki/Exposé_(Mac_OS_X\)). This makes it a lot easier to figure out which window preview is for which App.

> Install PPA repository and plugins

	sudo add-apt-repository ppa:webupd8team/gnome3
	sudo apt-get update
	sudo apt-get install gnome-shell-extensions-autohidetopbar
	sudo apt-get install gnome-shell-extensions-windowoverlay-icons

After logging out and back logging back in (or Alt+F2 followed by r), head over to the "Advanced Settings App"

> Next to the "Shell Extensions" section you should find new toggles

	Smart Overview Extension -> ON
	Auto Hide Top Panel Extension -> ON
	
In order to get more space and simplify the window, I wanted to get rid of the menubar by integrating it as a global menubar. Unlike MacOSX's global menubar which is horizontal, this one is vertical and works perfectly with my limited screen width. 

	sudo apt-get install gnome3-globalmenu

> Next I wanted get rid of the scrollbar, similar to how it is with Ubuntu. I used an updated verion of it from another PPA.

	sudo add-apt-repository ppa:ayatana-scrollbar-team/release
	sudo apt-get update
	sudo apt-get install overlay-scrollbar	

Ok almost done. The final step I did was to install a nifty applet that is great for laptops to manage power settings and screen resolutions, especially when you want to project. It adds itself right to the top menubar for easy access.

> Install Jupiter

	sudo add-apt-repository ppa:webupd8team/jupiter
	sudo apt-get update
	sudo apt-get install jupiter

And we're done! Enjoy your new desktop this holiday season and Happy 2012!


## Update (02-Jan-2012)

After writing the article I wondered if it was possible to get the Window titlebar to dissapear whereby Apps can run in full screen similar to Lion. Though its not perfect, the following hacks will give you just that!

> Install window-buttons extension to mirror `minimize, maximize, close` buttons in the top menubar

	sudo apt-get install gnome-shell-extension-window-buttons

Now enable the extension using "Gnome Advanced Settings" by visiting the "Shell Extensions" section.

	Window Buttons Extension -> ON

> Install maximus daemon to automatically remove the title bar as a window is maximized.

	sudo apt-get install maximus

Restary Gnome 3 and your set. You can restore a maximized window using the buttons in the top right corner of the top menu bar.

----

# References

* [Gnome 3 auto hide top bar](http://www.webupd8.org/2011/11/autohide-top-bar-extension-finally.html)
* [Ubuntu's Overlay Scrollbar Get Updated](http://www.omgubuntu.co.uk/2011/12/ubuntus-overlay-scrollbar-gets-updated-heres-how-to-upgrade/)
* [Gnome 3 global menu](http://www.webupd8.org/2011/11/install-gnome-shell-global-menu-in.html)
* [How to remove maximized window buttons](http://www.webupd8.org/2011/05/how-to-remove-maximized-windows.html)
* [Get Unity like window button extension](http://www.webupd8.org/2011/05/how-to-remove-maximized-windows.html)
* [Jupiter Applet finally available for Ubuntu 11.10](http://www.webupd8.org/2011/09/jupiter-applet-finally-available-for.html) 
* [High-Res screenshots over at flickr](http://www.flickr.com/photos/babytux/tags/screenshots/)

