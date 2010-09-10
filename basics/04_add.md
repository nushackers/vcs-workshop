!SLIDE bullets

# Your first file

- Grab `index.html` from here:

  [http://github.com/rctay/nus-hack-vcs-slides/zipball/01-base](http://github.com/rctay/nus-hack-vcs-slides/zipball/01-base)

!SLIDE commandline

	$ ls
	index.html

	$ cat index.html
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

	<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>*The* Next Facebook</title>
	</head>

	<body>
		<p id="message">Be afraid, Mark, be very afraid.</p>
	</body>

	</html>

!SLIDE

# Check your repo

	$ hg status
	? index.html

!SLIDE bullets

# `hg status` shows you...
- ...status of files in your local repo

!SLIDE

# Some common status codes:

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

# But `git add` is only a statement of intent

!SLIDE small

# Really do it

	$ hg commit -m "first step towards world domination"
	$ hg status

!SLIDE

# If `hg status` is silent, then nothing has changed

!SLIDE

# But for the paranoid:

	$ hg status --all
	C index.html
