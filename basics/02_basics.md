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
