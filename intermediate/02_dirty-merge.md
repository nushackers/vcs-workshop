!SLIDE

# Life isn't always easy

!SLIDE

# Jane's repo/branch

!SLIDE small

	$ cat <<EOF | patch -p1
	diff -r d0be750b3286 -r a195a1714d81 index.html
	--- a/index.html	Sun Sep 12 22:58:32 2010 +0800
	+++ b/index.html	Mon Sep 13 02:16:32 2010 +0800
	@@ -12,6 +12,8 @@

	 <body>
	 	<p>Be afraid, Mark, be very afraid.</p>
	+	<p>Sure he'll be.</p>
	+	<p>Pretty sure, that is.</p>
	 </body>

	 </html>
	 EOF

!SLIDE

# Mary's repo/branch

!SLIDE small

	$ cat <<EOF | patch -p1
	diff -r d0be750b3286 index.html
	--- a/index.html	Sun Sep 12 22:58:32 2010 +0800
	+++ b/index.html	Mon Sep 13 02:19:22 2010 +0800
	@@ -12,6 +12,8 @@

	 <body>
	 	<p>Be afraid, Mark, be very afraid.</p>
	+	<p>Hold your horses!</p>
	+	<p>Not so sure myself.</p>
	 </body>

	 </html>
	 EOF

!SLIDE

# Time to integrate

!SLIDE code-centre

# Pull from Jane

	$ hg pull ../jane-repo

!SLIDE code-centre

# Pull from Mary

	$ hg pull ../mary-repo

!SLIDE

# Heads?

	$ hg glog --style=compact
	o  6[tip]:1   93446f574041   2010-09-13 18:19 +0800   Mary
	|    Mary says...
	|
	| o  5:1   93a3bd57110f   2010-09-13 18:19 +0800   Jane
	|/     Jane says...
	|
	| @    4:2,3   4b07e7ac7d3a   2010-09-13 17:37 +0800   rctay89
	| |\     merge in new feature

!SLIDE

# &lt; resolve merge &gt;

!SLIDE code-centre

# Try resolving again?

	$ hg resolve --all

!SLIDE

# Discard merge?

!SLIDE code-centre

	$ hg update -C

!SLIDE

# &lt; commit &gt;
