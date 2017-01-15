switch($_POST['id']) {
	case 'header':
		if((isset($_POST['name'])&&$_POST['name']!="")&&(isset($_POST['phone'])&&$_POST['phone']!="")){ //Проверка отправилось ли наше поля name и не пустые ли они
        	$to = 'ichirozcom@gmail.com'; //csr@volvo-kirov.ru Почта получателя, через запятую можно указать сколько угодно адресов
        	$subject = 'Обратный звонок'; //Загаловок сообщения
        	$message = '
                <html>
                    <head>
                        <title>'.$subject.'</title>
                    </head>
                    <body>
						<h3>Заказ обратного звонка с шапки сайта</h3>
                        <h4>Имя: '.$_POST['name'].'</h4>
                        <h4>Телефон: '.$_POST['phone'].'</h4> 
						<p>Текст сообщения: '.$_POST['message'].'</p>
                    </body>
                </html>'; //Текст нащего сообщения можно использовать HTML теги
        	$headers  = "Content-type: text/html; charset=utf-8 \r\n"; //Кодировка письма
        	$headers .= "From: Сайт volvo-kirov.ru <info@volvo-kirov.ru>\r\n"; //Наименование и почта отправителя
        	mail($to, $subject, $message, $headers); //Отправка письма с помощью функции mail
		}
	break;
	case 'service':
		if((isset($_POST['name'])&&$_POST['name']!="")&&(isset($_POST['phone'])&&$_POST['phone']!="")){ //Проверка отправилось ли наше поля name и не пустые ли они
        	$to = 'service@volvo-kirov.ru, csr@volvo-kirov.ru'; //Почта получателя, через запятую можно указать сколько угодно адресов 
        	$subject = 'Обратный звонок(Сервис)'; //Загаловок сообщения
        	$message = '
                <html>
                    <head>
                        <title>'.$subject.'</title>
                    </head>
                    <body>
						<h3>Заявка на постановку в сервис</h3>
                        <h4>Имя: '.$_POST['name'].'</h4>
                        <h4>Телефон: '.$_POST['phone'].'</h4>          
						<p>Текст сообщения: '.$_POST['message'].'</p>
                    </body>
                </html>'; //Текст нащего сообщения можно использовать HTML теги
        	$headers  = "Content-type: text/html; charset=utf-8 \r\n"; //Кодировка письма
        	$headers .= "From: Сайт volvo-kirov.ru <info@volvo-kirov.ru>\r\n"; //Наименование и почта отправителя
        	mail($to, $subject, $message, $headers); //Отправка письма с помощью функции mail
		}
	break;
	case 'spares':
		if((isset($_POST['name'])&&$_POST['name']!="")&&(isset($_POST['phone'])&&$_POST['phone']!="")){ //Проверка отправилось ли наше поля name и не пустые ли они
        	$to = 'parts@volvo-kirov.ru,warranty@volvo-kirov.ru, csr@volvo-kirov.ru'; //Почта получателя, через запятую можно указать сколько угодно адресов
        	$subject = 'Обратный звонок(Запчасти)'; //Загаловок сообщения
        	$message = '
                <html>
                    <head>
                        <title>'.$subject.'</title>
                    </head>
                    <body>
						<h3>Запрос на наличие запчастей</h3>
                        <h4>Имя: '.$_POST['name'].'</h4>
                        <h4>Телефон: '.$_POST['phone'].'</h4>            
						<p>Текст сообщения: '.$_POST['message'].'</p>      
                    </body>
                </html>'; //Текст нащего сообщения можно использовать HTML теги
        	$headers  = "Content-type: text/html; charset=utf-8 \r\n"; //Кодировка письма
        	$headers .= "From: Сайт volvo-kirov.ru <info@volvo-kirov.ru>\r\n"; //Наименование и почта отправителя
        	mail($to, $subject, $message, $headers); //Отправка письма с помощью функции mail
		}
	break;
	case 'contact':
		if((isset($_POST['name'])&&$_POST['name']!="")&&(isset($_POST['phone'])&&$_POST['phone']!="")){ //Проверка отправилось ли наше поля name и не пустые ли они
        	$to = 'ichirozcom@gmail.com'; //Почта получателя, через запятую можно указать сколько угодно адресов
        	$subject = 'Обратный звонок(Директор)'; //Загаловок сообщения
        	$message = '
                <html>
                    <head>
                        <title>'.$subject.'</title>
                    </head>
                    <body>
			<h3>Один из клиентов захотел лично переговорить с директором</h3>
                        <h4>Имя: '.$_POST['name'].'</h4>
                        <h4>Телефон: '.$_POST['phone'].'</h4>            
						<p>Текст сообщения: '.$_POST['message'].'</p>      
                    </body>
                </html>'; //Текст нащего сообщения можно использовать HTML теги
        	$headers  = "Content-type: text/html; charset=utf-8 \r\n"; //Кодировка письма
        	$headers .= "From: Сайт volvo-kirov.ru <info@volvo-kirov.ru>\r\n"; //Наименование и почта отправителя
        	mail($to, $subject, $message, $headers); //Отправка письма с помощью функции mail
		}
	break;
}
?>