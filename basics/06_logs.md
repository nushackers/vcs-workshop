!SLIDE

# Our history so far

!SLIDE small

	$ hg log
	changeset:   1:979b5e026adb
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 22:06:10 2010 +0800
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
<span style="background-color: lime">changeset</span>:   1:979b5e026adb
tag:         tip
user:        Tay Ray Chuan <rctay89@gmail.com>
date:        Sun Sep 12 22:06:10 2010 +0800
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
changeset:   <span style="background-color: lime">1</span>:979b5e026adb
tag:         tip
user:        Tay Ray Chuan <rctay89@gmail.com>
date:        Sun Sep 12 22:06:10 2010 +0800
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
changeset:   1:<span style="background-color: lime">979b5e026adb</span>
tag:         tip
user:        Tay Ray Chuan <rctay89@gmail.com>
date:        Sun Sep 12 22:06:10 2010 +0800
summary:     changed colour of text
</code></pre>

!SLIDE bullets incremental

# Revision hashes are

- long
