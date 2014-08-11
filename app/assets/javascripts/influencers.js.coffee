# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
	$("ul.letter-anchors li a").on "click", (e)->
		e.preventDefault()
		letter = $(this).data('letter')
		section_top = $("#" + letter).offset().top
		$('body, html').animate({scrollTop: section_top - 80})
		return false

	$('a.to-top').on "click", (e)->
		$("html, body").animate({ scrollTop: 0 })
		

