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

!SLIDE

# Integrate new feature

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
