jQuery(document).ready(function(){

	//jQuery('.tinfaq-div').load('/apps/faqhtml');
	jQuery('.tinfaq-div').append('<span id="load-faq-spinner" style="text-align: center; display: block;"><img src="https://71d7274c.ngrok.io/assets/spinner-loader.gif" src="Loading..." /></span>');

	jQuery('.tinfaq-div').load( "/apps/faqhtml", function( response, status, xhr ) {

		setTimeout(function(){
			jQuery('#load-faq-spinner').hide(0);
		}, 3500);

		
	});

});