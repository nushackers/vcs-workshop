!SLIDE small

	$ cat <<EOF | patch -p1
	diff -r d0be750b3286 -r a195a1714d81 index.html
	--- a/index.html	Sun Sep 12 22:58:32 2010 +0800
	+++ b/index.html	Mon Sep 13 02:16:32 2010 +0800
	@@ -12,6 +12,8 @@

	 <body>
	 	<p>Be afraid, Mark, be very afraid.</p>
	+	<p>Sure he'll be.</p>
	+	<p>Pretty sure, that is.</p>
	 </body>

	 </html>
	 EOF

!SLIDE

# &lt;commit&gt;

!SLIDE

## Back in our original repo...

!SLIDE small

	$ cat <<EOF | patch -p1
	diff -r d0be750b3286 index.html
	--- a/index.html	Sun Sep 12 22:58:32 2010 +0800
	+++ b/index.html	Mon Sep 13 02:19:22 2010 +0800
	@@ -12,6 +12,8 @@

	 <body>
	 	<p>Be afraid, Mark, be very afraid.</p>
	+	<p>Hold your horses!</p>
	+	<p>Not so sure myself.</p>
	 </body>

	 </html>
	 EOF

!SLIDE

# &lt;commit&gt;

!SLIDE small

## Our histories:

## <br />

	a195a1714d81 add cool new feature - Tay Ray Chuan <rctay89@gmail.com>
	d0be750b3286 changed colour of text - Tay Ray Chuan <rctay89@gmail.com>
	13f2349a10f7 first step - Tay Ray Chuan <rctay89@gmail.com>

## <br />

	92652d8100d9 temper that confidence - Tay Ray Chuan <rctay89@gmail.com>
	d0be750b3286 changed colour of text - Tay Ray Chuan <rctay89@gmail.com>
	13f2349a10f7 first step - Tay Ray Chuan <rctay89@gmail.com>
