!SLIDE

# Your first change

!SLIDE code smaller

	...
  	<title>*The* Next Facebook</title>

		<style type="text/css">
		p#message {
			color: #FF0000;
		}
		</style>

	</head>

	...

!SLIDE

## What says you, `hg status`?

!SLIDE code

	$ hg status
	M index.html

!SLIDE

<pre><code>
? = not tracked
A = added
C = clean
<span style="background-color: red">M = modified</span>
</code></pre>

!SLIDE

# Clever!

!SLIDE

# What changed?

!SLIDE bullets incremental

# Enter `hg diff`

- *No diff lah*

!SLIDE code smaller

	$ hg diff
	diff -r 133a7e85bfbf index.html
	--- a/index.html	Sun Sep 12 01:33:50 2010 +0800
	+++ b/index.html	Sun Sep 12 01:33:58 2010 +0800
	@@ -1,6 +1,13 @@
	 <html>
	 <head>
	 	<title>*The* Next Facebook</title>
	+
	+	<style type="text/css">
	+	p#message {
	+		color: #FF0000;
	+	}
	+	</style>
	+
	 </head>

	 <body>

!SLIDE

# In Unified diff format

!SLIDE

# Which file?

!SLIDE

<pre><code>
diff -r 133a7e85bfbf <span style="background-color: lime">index.html</span>
--- a/<span style="background-color: lime">index.html</span>	Sun Sep 12 01:33:50 2010 +0800
+++ b/<span style="background-color: lime">index.html</span>	Sun Sep 12 01:33:58 2010 +0800
@@ -1,6 +1,13 @@
</code></pre>

!SLIDE

# Where in the file?

!SLIDE

<pre><code>
diff -r 133a7e85bfbf index.html
--- a/index.html	Sun Sep 12 01:33:50 2010 +0800
+++ b/index.html	Sun Sep 12 01:33:58 2010 +0800
<span style="background-color: red">@@ -1,6 +1,13 @@</span>
</code></pre>

!SLIDE

# Time to commit

!SLIDE bullets incremental

# `$ hg commit`

- vs. `$ hg commit --message ""`

- triggers your editor

- useful if message is long

!SLIDE small

# In your editor...

## <br />

	HG: this is ignored!!!
	changed colour of text

	HG: Enter commit message.  Lines beginning with 'HG:' are removed.
	HG: Leave message empty to abort commit.
	HG: --
	HG: user: Tay Ray Chuan <rctay89@gmail.com>
	HG: branch 'default'
	HG: changed index.html

!SLIDE

# Save and exit
