/**
 * Hook on to the load sequence by monkey-patching centerSlides() from
 * showoff.js.
 */
var old_centerSlides = centerSlides;
centerSlides = function(p_slides) {
	$(p_slides).children(".content.code-centre").each(function(s, slide) {
		var e = $(slide);
		var code_block = e.children("pre").first();
		code_block.css("margin-left", (e.width() - code_block.children("code").width()) / 2);
	});
	old_centerSlides(p_slides);
}
