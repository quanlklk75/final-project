jQuery(window).load(function(){
jQuery('#slider-brand-mobile .item a').delay(2500).show();
jQuery('.slider-brand.display-desktop .item a').delay(2000).show();
  jQuery('.flexslider').flexslider({
	animation: "fade",
directionNav:true,
	controlNav:true,
		prevText: '<i class="fa fa-angle-left" aria-hidden="true"></i>',          
    	nextText: '<i class="fa fa-angle-right" aria-hidden="true"></i>',
	start: function(slider){
	  jQuery('.flexslider').removeClass('loading');
	}
  });
});
jQuery(function(){
 jQuery('#zoom1').bind('click',function(){            
	var cloudZoom = jQuery(this).data('CloudZoom'); 
	cloudZoom.closeZoom();
	$.fancybox.open(cloudZoom.getGalleryList());
	return false;
	});
});

jQuery(document).ready(function(e) {
	jQuery('.footer-col > h4').append('<span class="toggle"></span>');
	if (jQuery(this).find('span').attr('class') == 'toggle opened') { 
				jQuery(this).find('span').removeClass('opened').parents('.footer-col').find('.footer-col-content').slideToggle(300); 
			}
		jQuery('.footer-col h4').on("click", function(){
			if (jQuery(this).find('span').attr('class') == 'toggle opened') { 
				jQuery(this).find('span').removeClass('opened').parents('.footer-col').find('.footer-col-content').slideToggle(300); 
			}
			else {
				jQuery(this).find('span').addClass('opened').parents('.footer-col').find('.footer-col-content').slideToggle(300);
			}
		});
		jQuery('.footer-col>.footer-col-content>ul').filter(function(){
			 if( jQuery(this).children("li").length==0)
			 {
				jQuery(this).parents('.footer-col').addClass('display_none_more');
			}
	 
		});
});
jQuery(function () {
jQuery('body').append('<div id="back-top"><i class="fa fa-angle-up"></i></div>');
jQuery('#back-top').hide();
if (jQuery(this).offset()>200)
{
	jQuery('#back-top').fadeIn();
}
else
{
 jQuery('#back-top').fadeOut();
}
 jQuery(window).scroll(function () {
  if (jQuery(this).scrollTop() > 200) {
   jQuery('#back-top').fadeIn();
  } else {
   jQuery('#back-top').fadeOut();
  }
 });
 jQuery(window).load(function () {
  if (jQuery(this).scrollTop() > 200) {
   jQuery('#back-top').fadeIn();
  } else {
   jQuery('#back-top').fadeOut();
  }
 });
 // scroll body to 0px on click
 jQuery('#back-top').click(function () {
	  jQuery('body,html').stop(false, false).animate({
	   scrollTop: 0
	  }, 800);
	  return false;
	 });
});
/*
	jQuery(document).ready(function(){
		var header_top_position = jQuery('.header_top_position').offset().top;
		jQuery(window).scroll(function(){
			if(jQuery(window).scrollTop() > header_top_position)
			{
				jQuery('.header_top_position').addClass('fix_top');
			}
			else
			{
				jQuery('.header_top_position').removeClass('fix_top');
			}
		});
		jQuery(window).load(function(){
			if(jQuery(window).scrollTop() > header_top_position)
				{
					jQuery(header_top_position).addClass('fix_top');
				}
		});
	});

*/
jQuery(document).ready(function(e) {
	jQuery('.sitebar-col > h4').append('<span class="toggle"></span>');
	if (jQuery(this).find('span').attr('class') == 'toggle opened') { 
				jQuery(this).find('span').removeClass('opened').parents('.sitebar-col').find('.sitebar-col-content').slideToggle(300); 
			}
		jQuery('.sitebar-col h4').on("click", function(){
			if (jQuery(this).find('span').attr('class') == 'toggle opened') { 
				jQuery(this).find('span').removeClass('opened').parents('.sitebar-col').find('.sitebar-col-content').slideToggle(300); 
			}
			else {
				jQuery(this).find('span').addClass('opened').parents('.sitebar-col').find('.sitebar-col-content').slideToggle(300);
			}
		});
});

jQuery('#owl-pro_slider').owlCarousel({
	loop:true,
	margin:3,
	pagination:false,
	items:4,
	autoplay: true,
		autoplayTimeout: 4000,
		autoplayHoverPause: true,
		autoplaySpeed: 1500,
	nav:true,
	paginationNumbers:false,
	navText: [ '<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>' ],
	responsiveClass:true,
	responsive:{
		0:{
			items:2
		},
		450:{
			items:3
		},
		600:{
			items:4
		},
		1000:{
			items:4
		}
	}
});

jQuery('#owl-pro_slider_view_all').owlCarousel({
	loop:false,
	margin:0,
	pagination:false,
	autoplay: true,
		autoplayTimeout: 5000,
		autoplayHoverPause: true,
		autoplaySpeed: 2000,
	nav:true,
	paginationNumbers:false,
	navText: [ '<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>' ],
	responsiveClass:true,
	responsive:{
		0:{
			items:1
		},
		450:{
			items:2
		},
		600:{
			items:2
		},
		767:{
			items:1
		},
		1000:{
			items:1
		}
	}
});
jQuery('.owl-brand').owlCarousel({
	loop:false,
	margin:40,
	lazyLoad:false,
	pagination:false,
	autoplay: true,
	autoplayTimeout: 5000,
	autoplayHoverPause: true,
	autoplaySpeed: 2000,
	nav:false,
	dots: false,
	paginationNumbers:false,
	navText: [ '<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>' ],
	responsiveClass:true,
	responsive:{
		0:{
			items:3
		},
		450:{
			items:5
		},
		600:{
			items:7
		},
		767:{
			items:7
		},
		1000:{
			items:10
		}
	}
});


jQuery('.owl-brand02').owlCarousel({
	loop:false,
	margin:20,
	lazyLoad:false,
	pagination:false,
	autoplay: true,
	autoplayTimeout: 5000,
	autoplayHoverPause: true,
	autoplaySpeed: 2000,
	nav:false,
	dots: false,
	paginationNumbers:false,
	navText: [ '<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>' ],
	responsiveClass:true,
	responsive:{
		0:{
			items:1
		},
		300:{
			items:2,
			margin:0
		},
		450:{
			items:2,
			margin:10
		},
		600:{
			items:3
		},
		767:{
			items:4
		},
		1000:{
			items:10
		}
	}
});

jQuery('#owl-warehouse').owlCarousel({
	loop:true,
	margin:0,
	dots:false,
	lazyLoad:true,
	pagination:false,
	autoplay: true,
	items:1,
	autoplayTimeout: 3000,
	autoplayHoverPause: true,
	autoplaySpeed: 2000,
	nav:false,
	paginationNumbers:false,
	navText: [ '<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>' ]
});
jQuery('.owl-pro-hot').owlCarousel({
	loop:false,
	margin:10,
	lazyLoad:false,
	pagination:false,
	autoplay: true,
	autoplayTimeout: 5000,
	autoplayHoverPause: true,
	autoplaySpeed: 2000,
	nav:false,
	dots: false,
	paginationNumbers:false,
	navText: [ '<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>' ],
	responsiveClass:true,
	responsive:{
		0:{
			items:1,
			margin:0
		},
		300:{
			items:2,
			margin:10
		},
		450:{
			items:3,
			margin:20
		},
		600:{
			items:3
		},
		768:{
			items:1
		},
		1000:{
			items:1
		}
	}
});


jQuery('#owl-pro_detail').owlCarousel({
	loop:true,
	nav:true,
	margin:3,
	pagination:false,
	items:4,
	paginationNumbers:false,
	navText: [ '<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>' ],
	responsiveClass:true,
	responsive:{
		0:{
			items:3,
			nav:true
		},
		600:{
			items:3
		},
		1000:{
			items:4
		}
	}
});
jQuery(document).ready(function(e) {
	 jQuery(".btn_animation_click").click(function(){
		 jQuery(this).addClass('btn_animation_click_active');
		  setTimeout(function () {
			jQuery(".btn_animation_click").removeClass('btn_animation_click_active');
		  }, 300);  
	});
	jQuery("#search").click(function(){
			jQuery(".search-form-mobile").toggle();
	});
});

jQuery(document).ready(function(){	
			jQuery('.menu_dropdown').find('li.parent').append('<strong></strong>');
			
			jQuery('.menu_dropdown li.parent strong').on("click", function(){
							

			if (jQuery(this).attr('class') == 'opened')
			{ 
				jQuery(this).removeClass().parent('li.parent').find('> ul').slideUp('fast'); 
			} 
			else
			{
				jQuery(this).addClass('opened').parent('li.parent').find('> ul').slideDown('fast');
			}

			});
	});
	
jQuery(document).ready(function() {
	//Default Action
	jQuery(".tab_content").hide(); //Hide all content
	jQuery("ul.tabs li:first").addClass("active").show(); //Activate first tab
	jQuery(".tab_content:first").show(); //Show first tab content
	//On Click Event
	jQuery("ul.tabs li").click(function() {
		jQuery("ul.tabs li").removeClass("active"); //Remove any "active" class
		jQuery(this).addClass("active"); //Add "active" class to selected tab
		jQuery(".tab_content").hide(); //Hide all tab content
		var activeTab = jQuery(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
		jQuery(activeTab).fadeIn(); //Fade in the active content
		return false;
	});
	});
