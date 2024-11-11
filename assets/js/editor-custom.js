jQuery(document).ready(function($) {
    "use strict";
    // User Toggle Sript 
	$('.pg-user-info').on("click", function() {
		$('.pg-user-useful-links').toggleClass('active');
		$(this).toggleClass('active');
	});
	$(".pg-user-useful-links, .pg-user-info").on('click', function(e) {
		e.stopPropagation();
	});
	$('body').on("click", function() {
		$('.pg-user-useful-links').removeClass('active');
		$(".pg-user-info").removeClass('active');
	});
	// Responsive Togggle 
	$('.pg-menu-toggle').on("click", function() {
		$('body').toggleClass('pg-sidebar-showshow');
	});
	$(".pg-menu-toggle").on('click', function(e) {
		e.stopPropagation();
	});
	$('body').on("click", function() {
		$('body').removeClass('pg-sidebar-showshow');
	});
	/**
	 * Shape Load
	 */ 
	$('#main_tab_shape').on('click',function(e){
		e.preventDefault();
		let ajax_url = $('#pg_ajax_url').data('ajax_url');
		let data = {}
		$.ajax({
			type:'post',
			url: ajax_url + 'Images_loads_ajax/shape',
			data:data,
			success:function(data){
			  $(".pg-element-shape-loads").html(data);
			}
		});
	});
	/**
	 * Libary Images Load Images
	 */ 
	$('#pg_library_load_im').on('click',function(e){
		e.preventDefault();
		let ajax_url = $('#pg_ajax_url').data('ajax_url');
		let data = {}
		$.ajax({
			type:'post',
			url: ajax_url + 'Images_loads_ajax/library',
			data:data,
			success:function(data){
			  $("#pg_library_load").html(data);
			}
		});
	});
	/**
	 * Libary Images Load Bg Images
	 */
	$('#pg_library_load_bg').on('click',function(e){
		e.preventDefault();
		let ajax_url = $('#pg_ajax_url').data('ajax_url');
		let data = {}
		$.ajax({
			type:'post',
			url: ajax_url + 'Images_loads_ajax/library_bg',
			data:data,
			success:function(data){
			  $("#pg_library_bg_load").html(data);
			}
		});
	});
	
	/**
	 * Pattern load
	 */ 
	 $('#pg_pattern_load_bg').on('click',function(e){
		e.preventDefault();
		let ajax_url = $('#pg_ajax_url').data('ajax_url');
		let data = {}
		$.ajax({
			type:'post',
			url: ajax_url + 'Images_loads_ajax/library_bg',
			data:data,
			success:function(data){
			 $("#pattern_load").html(data);
			}
		});
	});
     
	/**
	 * AI IMAGE GENEREATER Layer
	 */
	$('#pg_ai_images').on('click',function(e){
		e.preventDefault();
		let ajax_url = $('#pg_ajax_url').data('ajax_url');
		let key_words = $('#ai_images_layer_gen').val();
		let image_size = $('#pg_openai_image_size').val();
        if(key_words == ''){
            $.toaster('Enter Key Word', 'Error', 'danger');
		}else{
			$('#pg_wait_message').show();  
			let data = {key_words:key_words,image_size:image_size}
			$.ajax({
				type:'post',
				url: ajax_url + 'Images_loads_ajax/ai_image_generator',
				data:data,
				success:function(res){
				  $('#pg_wait_message').hide();  
				  $(".ed_append_ai_image").html(res);
                }
			});
		}
	});
	/** 
	 * AI IMAGE GENEREATER Back Ground
	 */
	$('#pg_ai_images_bg').on('click',function(e){
		e.preventDefault(); 
		let ajax_url = $('#pg_ajax_url').data('ajax_url');
		let key_words = $('#ai_images_bg').val();
		let image_size = $('#pg_openai_image_bg_size').val();
        if(key_words == ''){  
            $.toaster('Enter Key Word', 'Error', 'danger');
		}else{
			$('#pg_wait_message_bg').show();  
			let data = {key_words:key_words,image_size:image_size}
			$.ajax({
				type:'post',
				url: ajax_url + 'Images_loads_ajax/ai_image_generator_bg',
				data:data,
				success:function(res){
				    $('#pg_wait_message_bg').hide();  
				    $(".ed_append_ai_image_bg").html(res);
                }
			});
		}
	});
	
	/**
	 * AI Text Generator
	 */ 
	$('#pg_ai_text').on('click',function(e){
		e.preventDefault();
		let ajax_url = $('#pg_ajax_url').data('ajax_url');
		let search_key_word = $('#ai_images_layer').val();
		if(search_key_word == '' || search_key_word == undefined){
            $.toaster('Enter Key Word', 'Error', 'danger');
		}else{
			$('#pg_wait_message').show();  
			let data = {search_key_word:search_key_word}
			$.ajax({ 
				type:'post',
				url: ajax_url + 'Images_loads_ajax/ai_text_generator',
				data:data,
				success:function(res){
                    let result = JSON.parse(res);
					if(result.status==200){ 
						$('.pg-sidebar-input.pg-ai-text-copy').show();
                        $('#ai_textarea').val(result.content_data.trim());
						$('#pg_wait_message').html(result.message);
						console.log(result.message);
					}else{
                        console.log(result.message); 
						$('#pg_wait_message').html(result.message);
					}
				} 
			}); 
		}
	}); 
   // Textarea Text Copy
	$("#ai_text_copy").click(function() {				
		$("#ai_textarea").select();
		document.execCommand("copy");
		$('#pg_wait_message').html('Copied');
	}); 
	// Textarea Text Copy
	/** 
	 * Youtube Thumbanil image
	 */
	$('#youtube_key_word_hit').on('click',function(e){
		e.preventDefault(); 
        let ajax_url = $('#pg_ajax_url').data('ajax_url');
		let key_words = $('#youtube_key_word').val();
		let image_size = $('#type_of_thumnail').val();
		let image_set_area = $('#images_set_area').val();
        if(key_words == ''){  
            $.toaster('Enter Key Word', 'Error', 'danger');
		}else{
			$('#youtube_key_word_hit').text('Loading...');
			$('#pg_wait_message_bg').show();  
			let data = {key_words:key_words,image_size:image_size,image_set_area:image_set_area}
			$.ajax({
				type:'post',
				url: ajax_url + 'Images_loads_ajax/youtub_api_thumbnails_api',
				data:data,
				success:function(res){		
					const checkSt = res.split("=");	
					console.log(checkSt);
					if(checkSt[1]==0){	
						$('.pg-error-msg').html(checkSt[2]);
						return;					
					}
					$('#pg_wait_message_bg').hide();  
					$(".ed_youtube_thumbnail_image_bg").html(res);
					$('#youtube_key_word_hit').text('Apply');	
					
				}
			});
		}
	});
});