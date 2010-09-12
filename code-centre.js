/**
 * Hook on to the load sequence by monkey-patching centerSlides() from
 * showoff.js.
 */
var old_centerSlides = centerSlides;
centerSlides = function(p_slides) {
	$(".content.code-centre", p_slides).each(function(s, slide) {
		var slide$ = $(slide);
		var code_block$ = $("pre", slide$).first();
		code_block$.css("margin-left", (slide$.width() - $("code", code_block$).width()) / 2);
	});
	old_centerSlides(p_slides);
}
