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

!SLIDE bullets

# `hg status` shows you...
- ...status of files in your local repo

!SLIDE

## Some common status codes:

## <br />

	? = not tracked
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
	$ hg status

!SLIDE

# If `hg status` is silent, then nothing has changed

!SLIDE

# But for the paranoid:

	$ hg status --all
	C index.html
