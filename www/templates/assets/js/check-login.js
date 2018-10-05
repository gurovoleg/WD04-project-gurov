$(document).ready(function() {

	var checkLogin = (function(){
		
		// Переменные модуля
		var _form,
			_email = $('input[type="email"]'),
			_password = $('input[type="password"]'),
			_blockMessage = "<div class='notify notify--error-js ml-30 mr-30 absolute-position' style='display:none'>",
			_textMessage = "Заполните поле",
			_emailPattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

		// 	Запуск модуля
		var init = function(){
			_setupListners();
		}

		// Метод прослушивания событий
		var _setupListners = function(){
			$('#check-login__submit').on('click', function(e){
				_form = $('#check-login');
				e.preventDefault();
				_userAuth(_formButtonClick());
			});
			$('#check-registration__submit').on('click', function(e){
				_form = $('#check-registration');
				e.preventDefault();
				_userAuth(_formButtonClick());
			});
			$('#lost-password__submit').on('click', function(e){
				_form = $('#lost-password');
				e.preventDefault();
				_userAuth(_formButtonClick());
			});
			$('#set-new-password__submit').on('click', function(e){
				_form = $('#set-new-password');
				e.preventDefault();
				_userAuth(_formButtonClick());
			});
		}

		// Приватные методы/функции
		var _formButtonClick = function(){
			var _isValid = true;
							
			// Функция добавление блока с уведомлением и класса
			var addNotifyBlock = function(tag, attribute) {
				if (tag.attr(attribute) != undefined) {
					_errorInfo = _blockMessage + tag.attr(attribute) + "</div>";	
				} else {
					_errorInfo = _blockMessage + _textMessage + "</div>"
				}
				tag.before(_errorInfo).prev().fadeIn().delay(1500).fadeOut();
				tag.addClass('error');
				_isValid = false;
			}

			// Проверка полей
			if ( _password.length  ) {
				if (_password.val().trim() == "") addNotifyBlock(_password,'data-empty');
			}
						
			if ( _email.length  ) {
				if (_email.val().trim() == "") addNotifyBlock(_email,'data-empty');
				else if ( !(_emailPattern.test(_email.val().trim())) ) addNotifyBlock(_email,'data-error');	
			}
												
			// Убираем ошибки при новом вводе данных в поле
			_password.on('keydown', function(){
				_password.removeClass('error')
				_form.find('#error-message').remove();	
			});
			_email.on('keydown', function(){
				_email.removeClass('error')
				_form.find('#error-message').remove();	
			});

			return _isValid;
		}

		var _userAuth = function(isReady){
			if (isReady) _form.submit();
		}
		
		// Возвращаем публичные методы наружу, т.е. методы доступные вне модуля
		return { init }

	}()); 

	checkLogin.init();
	
});