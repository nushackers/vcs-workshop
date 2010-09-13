!SLIDE

# Your first branch #

!SLIDE

# What are branches?

!SLIDE bullets incremental

# Branches let you...

- separate out unstable stuff

- "cook" complex features

!SLIDE bullets incremental

# Presenting

- "easy" branching

- physical

!SLIDE code-centre

	$ cd ..
	$ $ ls -1 | grep vcs-demo
	vcs-demo
	$ hg clone vcs-demo new-feature

!SLIDE bullets incremental

# Term: Clones

- "copy" of original

!SLIDE

# Let's make changes

!SLIDE small

	$ hg diff
	diff -r d2476a826953 -r 8bf7b8c33422 index.html
	--- a/index.html	Mon Sep 13 16:58:10 2010 +0800
	+++ b/index.html	Mon Sep 13 17:02:02 2010 +0800
	@@ -2,6 +2,10 @@

	 <head>
	 	<title>*The* Next Facebook</title>
	+
	+	<style type="text/css">
	+	p { color: red; }
	+	</style>
	 </head>

	 <body>


!SLIDE

# &lt;commit&gt;

!SLIDE bullets incremental

# Meanwhile...

- dev continues in mainline

!SLIDE small code-centre

	$ hg diff
	diff --git a/index.html b/index.html
	index 4ece737..355149a 100644
	--- a/index.html
	+++ b/index.html
	@@ -6,6 +6,8 @@

	 <body>
	 	<p>Be afraid, Mark, be very afraid.</p>
	+
	+	<p>Pretty sure he will.</p>
	 </body>

	 </html>


!SLIDE

# &lt;commit&gt;

!SLIDE

# &lt;time passes&gt;

!SLIDE

# Integrate new feature!

!SLIDE code-centre

	$ cd ../vcs-demo

!SLIDE small code-centre

# What's in the feature?

<br />

	$ hg incoming ../new-feature/
	comparing with ../new-feature/
	searching for changes
	changeset:   2:8bf7b8c33422
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Mon Sep 13 17:02:02 2010 +0800
	summary:     change colour

!SLIDE

# Looks good, I want!

!SLIDE code-centre

# "Download" changes

	$ hg pull ../new-feature/

!SLIDE

# A new head!

!SLIDE small code-centre

	$ hg glog
	o  changeset:   3:8bf7b8c33422
	|  tag:         tip
	|  parent:      1:d2476a826953
	|  user:        Tay Ray Chuan <rctay89@gmail.com>
	|  date:        Mon Sep 13 17:02:02 2010 +0800
	|  summary:     change colour
	|
	| @  changeset:   2:afe5666b10ee
	|/   user:        Tay Ray Chuan <rctay89@gmail.com>
	|    date:        Mon Sep 13 17:22:04 2010 +0800
	|    summary:     important update

!SLIDE bullets incremental

# Term: Head

- changeset with no children

!SLIDE bullets incremental

# Recall:

- `hg commit` creates a new commit

- points to previous commit

!SLIDE center

![heads diagram](wiki-heads.png)

From: http://mercurial.selenic.com/wiki/Head

!SLIDE

# Our histories are still divergent

!SLIDE

# Combine them!

	$ hg merge -r 3
	$ hg commit -m "merge in new feature"

!SLIDE bullets incremental

# Head commit now has two parents

!SLIDE small

	$ hg glog --style=compact
	@    4[tip]:2,3   4b07e7ac7d3a   2010-09-13 17:37 +0800   rctay89
	|\     merge in new feature
	| |
	| o  3:1   8bf7b8c33422   2010-09-13 17:02 +0800   rctay89
	| |    change colour
	| |
	o |  2   afe5666b10ee   2010-09-13 17:22 +0800   rctay89
	|/     important update

