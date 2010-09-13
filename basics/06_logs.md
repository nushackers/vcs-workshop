!SLIDE

# Our history so far

!SLIDE small

	$ hg log
	changeset:   1:d0be750b3286
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:58:32 2010 +0800
	summary:     changed colour of text

	changeset:   0:13f2349a10f7
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 21:49:30 2010 +0800
	summary:     first step

!SLIDE

# What do all these mean?

!SLIDE small code-centre

# Changeset

<pre><code>
<span style="background-color: lime">changeset</span>:   1:d0be750b3286
tag:         tip
user:        Tay Ray Chuan &lt;rctay89@gmail.com&gt;
date:        Sun Sep 12 22:58:32 2010 +0800
summary:     changed colour of text
</code></pre>

!SLIDE bullets incremental

# Term: Changeset

- also: revision

- a "point" in history

- created with `hg commit`

!SLIDE small

# Revision number

<pre><code>
changeset:   <span style="background-color: lime">1</span>:d0be750b3286
tag:         tip
user:        Tay Ray Chuan &lt;rctay89@gmail.com&gt;
date:        Sun Sep 12 22:58:32 2010 +0800
summary:     changed colour of text
</code></pre>

!SLIDE bullets incremental

# Revision numbers are

- short

- sequential

- chronological

- relative to current repository only

!SLIDE

# Revision hash

<pre><code>
changeset:   1:<span style="background-color: lime">d0be750b3286</span>
tag:         tip
user:        Tay Ray Chuan &lt;rctay89@gmail.com&gt;
date:        Sun Sep 12 22:58:32 2010 +0800
summary:     changed colour of text
</code></pre>

!SLIDE bullets incremental

# Revision hashes are

- long

- SHA-1 hash

- unique across all repositories

!SLIDE bullets incremental

- short (12):

  `d0be750b3286`

- long (40):

  `d0be750b3286852f74d2c14f2db315389a1e8b90`

!SLIDE small code-centre

# Committer info

<pre><code>
changeset:   1:d0be750b3286
tag:         tip
<span style="background-color: lime">user:        Tay Ray Chuan &lt;rctay89@gmail.com&gt;</span>
date:        Sun Sep 12 22:58:32 2010 +0800
summary:     changed colour of text
</code></pre>

!SLIDE small code-centre

# Commit datetime

<pre><code>
changeset:   1:d0be750b3286
tag:         tip
user:        Tay Ray Chuan &lt;rctay89@gmail.com&gt;
<span style="background-color: lime">date:        Sun Sep 12 22:58:32 2010 +0800</span>
summary:     changed colour of text
</code></pre>

!SLIDE small code-centre

# Summary

<pre><code>
changeset:   1:d0be750b3286
tag:         tip
user:        Tay Ray Chuan &lt;rctay89@gmail.com&gt;
date:        Sun Sep 12 22:58:32 2010 +0800</span>
<span style="background-color: lime">summary:     changed colour of text</span>
</code></pre>

!SLIDE

# More ways of reviewing history

!SLIDE small

# At a revision (number)

## <br />

	$ hg log -r 1
	changeset:   1:d0be750b3286
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:58:32 2010 +0800
	summary:     changed colour of text

!SLIDE small

# At a revision (hash)

## <br />

	$ hg log -r d0be750b3286
	changeset:   1:d0be750b3286
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:58:32 2010 +0800
	summary:     changed colour of text

!SLIDE small

# Between a range

## <br />

	$ hg log -r 0:1
	changeset:   0:13f2349a10f7
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 21:49:30 2010 +0800
	summary:     first step

	changeset:   1:d0be750b3286
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:58:32 2010 +0800
	summary:     changed colour of text

!SLIDE small

# Last &lt;n&gt; revisions

## <br />

	$ hg log --limit 1
	changeset:   1:d0be750b3286
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:58:32 2010 +0800
	summary:     changed colour of text

!SLIDE smaller

# What changed?

	$ hg log -r 1 -p
	changeset:   1:d0be750b3286
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:58:32 2010 +0800
	summary:     changed colour of text

	diff -r 13f2349a10f7 -r d0be750b3286 index.html
	--- a/index.html        Sun Sep 12 21:49:30 2010 +0800
	+++ b/index.html        Sun Sep 12 22:58:32 2010 +0800
	@@ -1,6 +1,13 @@
	 <html>
	 <head>
		<title>*The* Next Facebook</title>
	+
	+       <style type="text/css">
	+       p#message {
	+               color: #FF0000;
	+       }
	+       </style>
	+
	 </head>

	 <body>

!SLIDE smaller

# Also with `hg diff`:

	$ hg diff -r 0:1
	diff -r 13f2349a10f7 -r d0be750b3286 index.html
	--- a/index.html        Sun Sep 12 21:49:30 2010 +0800
	+++ b/index.html        Sun Sep 12 22:58:32 2010 +0800
	@@ -1,6 +1,13 @@
	 <html>
	 <head>
		<title>*The* Next Facebook</title>
	+
	+       <style type="text/css">
	+       p#message {
	+               color: #FF0000;
	+       }
	+       </style>
	+
	 </head>

	 <body>

!SLIDE bullets incremental

# Different display styles

- `default`

- `compact`

- `changelog`

- `xml`

!SLIDE small

# With `--style compact`:

## <br />

	$ hg log --style compact
	changeset:   1:d0be750b3286
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:58:32 2010 +0800
	summary:     changed colour of text

!SLIDE smaller left

# Custom:

## `{field}`: uses a special field

## `field|filter`: runs it through a filter

## <br />

	$ hg log --template \
	"{node|short} {desc|firstline} - {author}\n"
	d0be750b3286 changed colour of text - Tay Ray Chuan <rctay89@gmail.com>
	13f2349a10f7 first step - Tay Ray Chuan <rctay89@gmail.com>

!SLIDE

# Back in time?

!SLIDE

	$ hg update -r 1

!SLIDE

# &lt; variations &gt;
