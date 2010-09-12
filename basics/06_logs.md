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
