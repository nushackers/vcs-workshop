/**
 * Hook on to the load sequence by monkey-patching centerSlides() from
 * showoff.js.
 */
var old_centerSlides = centerSlides;
centerSlides = function(p_slides) {
	var e = $(".content.code-centre", p_slides);
	var w = e.first().width();
	$("pre", e).each(function(s, code_block) {
		var code_block$ = $(code_block);
		code_block$.css("margin-left", (w - $("code", code_block$).width()) / 2);
	});
	old_centerSlides(p_slides);
}
