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

!SLIDE

# Enter `hg diff`

## "diff" as in "difference"

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
--- a/index.html	Sun Sep 12 01:33:50 2010 +0800
+++ b/index.html	Sun Sep 12 01:33:58 2010 +0800
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
