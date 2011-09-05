---
layout: post
title: "Getting Down With Markdown"
date: 2011-09-02 10:46
comments: true
categories: 
---
Recently I've been looking for an alternative to  [docbook](http://docbook.org), which I've used for most of my tutorial handouts and internal developer documentation at [Thinkcube](http://thinkcube.com). But the more I used it docbook the more I wanted a simpler solution which didn't require me to make sure my XML was in order.

Naturally, at first I thought I'd try [Latex](http://latex-project.org) since it had a pretty good wrap with geeks and has even [surpassed usability expectations](http://openwetware.org/wiki/Word_vs._LaTeX) set forth by some of the mainstream wordprecessors :). What I loved about Latex was you could concentrate on the content first and formatting later. Its legendary ability to output desktop publishing quality documents and  convert to a variety of formats such as html, pdf or odt was a killer.

Just as I was about to dive into Latex, [Chanux](http://twitter.com/chanux) suggested [Markdown](http://daringfireball.net/projects/markdown) as an alternative. Hmm, Markdown, I pondered... I even liked the sound of it. It turns out Markdown is even better! You could think of it as a simplified wiki syntax but a better description would be to call it a WYSIWYG wiki syntax.

 I've always endorsed the [KISS](en.wikipedia.org/wiki/KISS_principle) philosophy. There is nothing more simple and satisfying than to write a text file using [vim](http://vim.org) and track its progress via [git](http://git-scm.com). After briefly going through the syntax, I realized this is exactly what I needed. I also realized that I had already used Markdown without actually thinking about it as part of using [github](http://github.com) for a pet project. Everything about Markdown was all good and the whole [controversy](http://www.zdnet.com/blog/violetblue/when-software-offends-the-pantyshot-package-controversy/509) around Markdown's html compiler names were exactly the kind of celebrity gossip it needed to grab attention! 

It was around this time, I was due to create a note for a tutorial for the [ICTer workshop](http://www.icter.org/UCSCConf/index.php/icter/ICTer2011/schedConf/workshops) myself and Dr. Ajantha from UCSC was to deliver. By now, I had decided on Markdown with [upskirt](https://github.com/chobie/upskirt) (yes this is one of the controversal names) to create the notes but what about the slides? Could I use Markdown for that as well? After a little looking around, I found a wonderful system called [Landslide](https://github.com/adamzap/landslide) which enabled me to compile Markdown syntax into a beautiful html5 slide show presentation. After a little playing around I managed to build slides as well as the note using a single markdown source code! How cool was that? I will write a separate post soon on the HOWTO details but for now enjoy the [slides](http://geekaholic.github.com/slides), if thats your cup of tea. My Markdown adventures don't end there. This post too was written using Markdown and converted to html using [octopress](http://octopress.org).


