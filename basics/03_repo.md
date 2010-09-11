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

!SLIDE bullets incremental

# Stores data #

- history

- files

- files at each state

!SLIDE

# What's in your new repo?

!SLIDE

<div id="repo-diagram">
	<div class="left">
		<span class="title">The "real" repository</span>
		<div class="hg">
			<span class="text">.hg</span>
		</div>
	</div>

	<div class="right">
		<span class="title">Working copy</span>
		<div class="file-container">
			<div class="file" id="file1">
				<span>file1</span>
			</div>

			<div class="file" id="file2">
				<span>file2</span>
			</div>

			<div class="file" id="file3">
				<span>file3</span>
			</div>

			<div class="clear"></div>
		</div>
	</div>
</div>

