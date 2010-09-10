!SLIDE

# The Basics #

!SLIDE

# User info #

## tell hg who you are ##

		[ui]
		username = John Tan <john@johntan.com>

!SLIDE bullets

# put this in:
- on Unix,

  `~/.hgrc`

- on Windows,

  `USERPROFILE%\.hgrc`

- with TortoiseHg,

  Global Settings -> Commit -> Username

!SLIDE bullets

# Term: Repository #

* "repo" in short

!SLIDE small
# Creating a new repository #

	# in the current directory
	$ hg init
	# in the folder called `mynewproject`
	$ hg init mynewproject

!SLIDE small

# Getting an existing repository #

	$ hg clone http://john.com/project-repo
	$ hg clone /path/to/local/repo

!SLIDE bullets incremental

# Term: Clones and Working Copies #
* a feature of distributed VCS
* you get a local copy of repository
* full history

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

# Tell `hg` to track your file

	$ hg add index.html


