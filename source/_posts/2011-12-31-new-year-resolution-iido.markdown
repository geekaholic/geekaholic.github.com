---
layout: post
title: "Track your New Year Resolutions with ii.do"
date: 2011-12-31 21:30
comments: true
author: Buddhika Siddhisena
published: true
categories: 
---

I know, I know, it's a bit of a cheesy title to promote my Open Source project but here me out - it really does work. Though I didn't really write it to track my new year resolutions (I've never found them effective beyond a week), I did write it out of constant frustration with not finding a TODO productivity tool that stuck.

Let me explain... I've tried EVERYTHING!

* Google Calendar & tasks
* Sending myself Emails
* Wiki (Dokuwiki, Mediwiki, Twiki etc.)
* Tomboy
* Tomboy with UbuntuOne & Android App
* EverNote
* Remember the Milk
* Gedit notes on my desktop
* Post-it notes widget
* Actual Post-it notes
* Old-skool diary
* Pieces of paper including backs of payment receipts

From the above list, if anything came remotely to sticking as a habit, then it'd be the sticky notes & pieces of paper. I'm not suggesting the other methods suck, but I wouldn't use it beyond a couple of weeks.

Why was it that despite me spending hours on a computer, the best thing that had a chance of remotely working was old-skool pen & paper? And then it hit me. A good todo App should be:

1. In your face!
2. Really simple to use (like pen & paper)
3. Did I mention in your face?

Now my solution isn't for everyone. At this moment, it is intended ONLY for fellow geeks who spent a lot of time in the command line (GNU & UNIX only), and I call it ii.do.

## What is ii.do

ii.do, pronounced "I do", but really a roman play on 2.do, is a command line todo list manager that uses a simple text file and simple MarkDown syntax to track your todo tasks. The beauty of using MarkDown syntax is in it's resemblance to the natural way we jolt down text on a piece of paper.

ii.do is optimized around querying tasks as opposed to updating tasks. For entering and updating tasks, it uses a plain old vim text editor, which has syntax highlighting for Markdown built-in. If vi is not your thing, then it's relatively easy to configure another editor by exporting the shell $EDITOR variable.

The other main design goal I had was to make it into a standalone shell script which could stand (mostly) on its own. Except for standard shell commands like sed, grep and bash itself, it doesn't demand much.

But the main power of ii.do comes ONLY (and I repeat ONLY), if you modify your shell to :

1. Define an easy alias (such as t) which can be used to summon ii.do from anywhere within the shell
2. You modify your PS1 shell prompt to update it with the pending number of tasks (this is the in your face bit)

The second one point above is *important*, if you plan on actually using it productively, for there is nothing like an App stalking you with a reminder of how many things you have left todo.

## Installing ii.do

You can download a tarbar ball of ii.do from [github](https://github.com/geekaholic/ii.do/downloads). Then just extract it to your home directory, make the shell script executable (just in case) and finally copy the sample todo.markdown to your $HOME

	 $ tar zxf geekaholic-ii.do-iido-xxx.tgz
	 mv geekaholic-ii.do-\* ~/ii.do
	 chmod +x ~/ii.do/ii.do
	 cp ~/ii.do/todo.markdown ~

Though ii.do is now usable, you should create an alias in order to make it more accessible and add it to ~/.bash\_profile or ~/.bashrc

	 echo "alias t='$HOME/ii.do'" &gt;&gt; ~/.bashrc

Finally the *most important* step of adding a counter to your SHELL prompt is semi-automated via ii.do!

	 ~/ii.do/ii.do -S "$PS1" &gt;&gt; ~/.bashrc

Your all set! You might want to logout and login or do a source ~/.bashrc

*Note:* if you would rather relocate the todo.markdown, for instance in your Dropbox folder then use the -f option.

	 echo "alias t='$HOME/ii.do -f $HOME/Dropbox/todo.markdown'" &gt;&gt; ~/.bashrc

## Using ii.do

Now the fun begins! Lets start with the most basic.

	 t -h

		Version: 0.6.1

		Usage: ii.do [-f todo_file.markdown] [-T topic_number] [options]

		Options :
		 -e 		 Open TODO file using $EDITOR
		 -n 		 Count number of pending tasks. Can be filtered using -x, -X etc.
		 -X 		 Filter to show only pending tasks
		 -x 		 Filter to show only completed tasks
		 -i 		 Filter to show only important tasks
		 -t 		 Filter to show only topics with topic_number
		 -C 		 Don't colorize output (useful for piping)
		 -H 		 HTMLize the output
		 -S "$PS1" 	 Will return modified PS1 prompt to contain pending task count
		 -h 		 Show this help screen

		By default, we expect a ~/todo.markdown to be in your $HOME if not overridden 
		by the -f option. Refer to http://github.com/geekaholic/ii.do for examples of 
		creating this file.

----

To edit a file using vi or $EDITOR

	 t -e

Using markdown syntax to maintain todo.markdown is simple. You start out with a main heading called a topic.

	  # Weekly Activities

or using the alternate style

	Weekly Activities
	=================

Next you start your list of tasks as a bullet `*` list

	* Come up with a BIG idea
	* Implement BIG idea and be awesome

You could further break up your topic into subtopics as follows:

	# Weekly Activities

	## Entertainment

	* Watch a Movie
	* Go bowling

	Excercise
	---------

	* Go to gym at least 3 days a week
	* Play some wii sports

As you might have guessed the `---` are the alternate form for a sub level topic. This way you have have multiple top level topics followed by sublevel topics, having tasks at each level.


---

Now we got the data entry part sorted, lets see how we can query the task list.

	 t

![ii.do output](http://farm8.staticflickr.com/7008/6606634025_e29d008501.jpg)

Will show all your tasks using terminal colors.

---

To filter tasks to show `only pending` or `only completed` ones:

	 t -X
	 t -x

To filter by topic, so that it only shows tasks belonging to one topic including it's sub topic:

	t -t
	
	1: # Weekly Activities
	2: ## Entertainment
	3: ## Excercise
	4: # Home Work
	
	t -T 1

The above will show everything up to topic 4 (Home Work)

---

To count the number of pending and competed tasks

	 t -X -n
	 t -x -n

---

To update the task to mark it as complete, place an x in front of the task

	* x Take out the trash

To mark a task as important, place an `! mark` in front of it

	* ! Go to gym at least 3 days a week

To mark a task with a high priority, place the priority number in front of the task

	* (1) Finish history essay

---

Finally, ii.do has two options that customize the output. The first option is to turn off color which is handy when you want to pipe the output of ii.do with more unix commands.

	t -C | grep '^*'

The other option is to export the todo list as html

	t -H > ~/todo.html

![ii.do html output](http://farm8.staticflickr.com/7145/6606925889_c86b0fc9a8.jpg)

## Other Uses

Besides tracking my todo list on a daily basis, I've recently found another use for ii.do - track my bookmarks. I know, your probably thinking of delicious or firefox/chrome bookmark syncing but for me those solutions just don't cut it. For one, I use about 3 browsers and finding old bookmarks can be a real pain. So now I just use an alias with a custom bookmarks.mdown

	alias bm="$HOME/ii.do/ii.do -f $HOME/Dropbox/bookmarks.mdown"

Another use was to keep track of lecture topics by marking them off as I taught them over a period of two months. I also use it to keep track of some interesting quotes I come across, just for inspiration. 

----

## See also

Watch a talk I gave to introduce ii.do at [RefreshColombo](http://www.refreshcolombo.org)

<iframe width="300" height="315" src="http://www.youtube.com/embed/9GrFj5gUMAI" frameborder="0" allowfullscreen></iframe>

