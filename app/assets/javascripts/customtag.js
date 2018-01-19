jQuery(document).ready(function() {
	jQuery('.tap-new_sect').click(function (event) {
		if(jQuery(this).hasClass('active-form')){
			jQuery(this).removeClass('active-form');
			jQuery(this).next().hide(0);
		}else{
			jQuery('.tap-new_sect').removeClass('active-form');
			jQuery(this).addClass('active-form');
		  	jQuery('.form-new-sect, .form-edit-sect').hide(0);
		  	jQuery(this).next().show(0);	
		}
		
	  	event.preventDefault(); // Prevent link from following its href

	});

	jQuery('.tap-edit_sect').click(function (event) {
		event.preventDefault();
		var attrrel = jQuery(this).attr('rel');
		var edit_link = attrrel.replace(/[/]/g, "-");;
		if(jQuery(this).hasClass('active-form')){
			jQuery(this).removeClass('active-form');
			jQuery('#'+edit_link).hide(0);
		}
		else{
			jQuery(this).addClass('active-form');
			jQuery('.form-new-sect, .form-edit-sect').hide(0);
			jQuery('#'+edit_link).show(0);
		}
	  	
	});

	jQuery('.faq-question').click(function (event) {
		event.preventDefault();

		if(jQuery(this).hasClass('active')){
			jQuery(this).removeClass('active');
			jQuery(this).next().slideUp('slow');
		}else{
			jQuery(this).addClass('active');
			jQuery('.faq-answer').slideUp(0);
			jQuery(this).next().slideDown('slow');
		}
	});


});