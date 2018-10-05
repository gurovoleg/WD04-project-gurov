$(document).ready(function() {
	
	setTimeout(function(){
    $('.notify').fadeOut(500);    
  },3000);

  // Upload file. Кнопка загрузки фотографии
  $('.inputfile').change(function() {
      var label = $(this).parent().find('span');
       label.text($(this).val().replace('C:\\fakepath\\',''));
  });

});