!SLIDE

# Your first change

!SLIDE code smaller

	<html>

	<head>
		<title>*The* Next Facebook</title>
	</head>

	<body>
	...

!SLIDE

## What says you, `hg status`?

!SLIDE code

	$ hg status
	M index.html

!SLIDE

<pre><code>
? = not tracked
A = added
C = clean
<span style="background-color: red">M = modified</span>
</code></pre>

!SLIDE

# Clever!

!SLIDE

# What changed?

!SLIDE bullets incremental

# Enter `hg diff`

- *No diff lah*

!SLIDE code smaller

	$ hg diff
	diff -r c8a1664bbe05 -r b2c50c34e446 index.html
	--- a/index.html	Mon Sep 13 16:23:36 2010 +0800
	+++ b/index.html	Mon Sep 13 16:25:02 2010 +0800
	@@ -1,5 +1,9 @@
	 <html>

	+<head>
	+	<title>*The* Next Facebook</title>
	+</head>
	+
	 <body>
	 	<p>Be afraid, Mark, be very afraid.</p>
	 </body>


!SLIDE

# In Unified diff format

!SLIDE

# Which file?

!SLIDE

<pre><code>
diff -r 133a7e85bfbf <span style="background-color: lime">index.html</span>
--- a/<span style="background-color: lime">index.html</span>	Sun Sep 12 01:33:50 2010 +0800
+++ b/<span style="background-color: lime">index.html</span>	Sun Sep 12 01:33:58 2010 +0800
@@ -1,6 +1,13 @@
</code></pre>

!SLIDE

# Where in the file?

!SLIDE

<pre><code>
diff -r 133a7e85bfbf index.html
--- a/index.html	Sun Sep 12 01:33:50 2010 +0800
+++ b/index.html	Sun Sep 12 01:33:58 2010 +0800
<span style="background-color: red">@@ -1,6 +1,13 @@</span>
</code></pre>

!SLIDE

# Time to commit

!SLIDE bullets incremental

# `$ hg commit`

- vs. `$ hg commit --message ""`

- triggers your editor

- useful if message is long

!SLIDE small

# In your editor...

## <br />

	HG: this is ignored!!!
	add title

	That's about it.
	HG: Enter commit message.  Lines beginning with 'HG:' are removed.
	HG: Leave message empty to abort commit.
	HG: --
	HG: user: Tay Ray Chuan <rctay89@gmail.com>
	HG: branch 'default'
	HG: changed index.html

!SLIDE

# Save and exit

!SLIDE bullets incremental

# Note: to abort,

- delete all lines, or

- prefix all lines with `HG:`

!SLIDE

# Tips on writing commit messages

!SLIDE small code-centre

# Bad!

## <br />

	this is what i did 1) this 2) that 3) this and that; nice i like what i did

!SLIDE small code-centre

# Write like email

## <br />

	first line: short summary, like "subject"
	<second line empty>
	third line onwards: more details, if required; like "body".

!SLIDE small

# By default, only summary is shown

	$ hg log --limit 1
	changeset:   1:979b5e026adb
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:06:10 2010 +0800
<pre><code>summary:     <span style="background-color: lime">add title</span></code></pre>

!SLIDE small

# To show full message,

	$ hg log --limit 1 -v
	changeset:   1:d0be750b3286
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:58:32 2010 +0800
	files:       index.html
	description:
<pre><code><span style="background-color: lime">
add title

That's about it.</span></code></pre>

!SLIDE small

# Bad change?

!SLIDE small code-centre

	$ cat <<EOF | patch -p1
	diff --git a/index.html b/index.html
	index 4ece737..b141ee1 100644
	--- a/index.html
	+++ b/index.html
	@@ -6,6 +6,7 @@

	 <body>
	 	<p>Be afraid, Mark, be very afraid.</p>
	+	<p>This is some <very bad> code.</p>
	 </body>

	 </html>

!SLIDE code-centre

# Enter `hg revert`

## Rolls back to previous commit

<br />

	# per-file basis
	$ hg revert <file>
<br />
	# all files
	$ hg revert --all
