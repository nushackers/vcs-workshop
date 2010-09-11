!SLIDE center

# Your first repository #

## <br />

	$ hg init vcs-demo

!SLIDE

# `hg init` creates a fresh, new repository

!SLIDE

## Other ways of creating a repository

## <br />

	# in the current directory
	$ hg init
	# in the folder called `mynewproject`
	$ hg init mynewproject

!SLIDE bullets

# Term: Repository #

* "repo" in short

!SLIDE small

# Getting an existing repository #

	$ hg clone http://john.com/project-repo
	$ hg clone /path/to/local/repo

!SLIDE bullets incremental

# Term: Clones and Working Copies #
* a feature of distributed VCS
* you get a local copy of repository
* full history
