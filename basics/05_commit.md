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

!SLIDE code smaller

	$ hg status
	M index.html
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
