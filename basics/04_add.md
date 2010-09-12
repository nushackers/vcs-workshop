!SLIDE bullets

# Your first file

### <br />

## Grab it like this:

### <br />

	$ wget http://github.com/rctay/\
	nus-hack-vcs-slides/raw/01-base/index.html

!SLIDE commandline

	$ ls
	index.html

	$ cat index.html
	<html>
	<head>
		<title>*The* Next Facebook</title>
	</head>

	<body>
		<p>Be afraid, Mark, be very afraid.</p>
	</body>

	</html>

!SLIDE

# Check your repo

## <br />

	$ hg status
	? index.html

!SLIDE bullets incremental

# `hg status` shows you...
- ...status of files in your local repo

!SLIDE

## Some common status codes:

## <br />

	? = not tracked
	A = added
	C = clean
	M = modified

!SLIDE code-narrow

	$ hg status
	? index.html

## <br />

<pre><code><span style="background-color: lime">? = not tracked</span></code></pre>
	A = added
	C = clean
	M = modified

!SLIDE

# How do you tell `hg` to track your file?

!SLIDE

	$ hg add index.html
	$ hg status
	A index.html

!SLIDE

# But `hg add` is only a statement of intent

!SLIDE small

# Really do it

## <br />

	$ hg commit -m "first step towards world domination"

!SLIDE

# `hg commit`...

## saves the current state

## creates a checkpoint in history

!SLIDE

## What's our history thus far?

!SLIDE small

	$ hg log
	changeset:   0:8c0ed141af95
	tag:         tip
	user:        Tay Ray Chuan <rctay89@gmail.com>
	date:        Sun Sep 12 01:50:25 2010 +0800
	summary:     first step towards world domination

!SLIDE bullets incremental

# `hg log`

* Shows history

* More on fields later

!SLIDE

# Let's check our status

!SLIDE

	$ hg status

!SLIDE

# If `hg status` is silent, then nothing has changed

!SLIDE

# But for the paranoid:

## <br />

	$ hg status --all
	C index.html

!SLIDE

<pre><code>
? = not tracked
A = added
<span style="background-color: lime">C = clean</span>
M = modified
</code></pre>
