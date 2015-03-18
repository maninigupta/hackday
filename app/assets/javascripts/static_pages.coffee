# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
$(document).ready ->
	$('#fullpage').fullpage({
		scrollOverflow: true
	});
	
	
$(document).on('mousewheel') -> 
	$('.bounce').addClass('hide-me')


	# Home Page
	if window.location.pathname == "/"
		$('#home-link').addClass('active')
		$(window).scroll ->
			if $(window).scrollTop() + window.innerHeight > $("#directions h1").offset().top + parseInt($("#directions h1").css("padding-top"))
				$('.bounce').hide()
			else
				if !$('.bounce').is(':visible') then $('.bounce').show()



	# Participants Page
	else if window.location.pathname == "/participants"
		$('#participants-link').addClass('active')
		setRecorderSlideDownEvent()

	# Sponsors Page
	else if window.location.pathname == "/sponsors"
		$('#sponsors-link').addClass('active')
		setRecorderSlideDownEvent()

	# Judges Page
	else if window.location.pathname == "/judges"
		$('#judges-link').addClass('active')
		setRecorderSlideDownEvent()


setRecorderSlideDownEvent = () ->
	$('#show-video-recorder').on 'click', (e) ->
		$('#new-participant-form').slideDown(300)
		$(e.target).hide()
