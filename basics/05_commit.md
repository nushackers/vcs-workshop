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
	diff -r 6daeba4be1e4 index.html
	--- a/index.html        Fri Sep 10 17:28:34 2010 +0800
	+++ b/index.html        Fri Sep 10 18:07:40 2010 +0800
	@@ -5,6 +5,13 @@
	 <head>
		 <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		 <title>*The* Next Facebook</title>
	+
	+       <style type="text/css">
	+       p#message {
	+               color: #FF0000;
	+       }
	+       </style>
	+
	 </head>

	 <body>
