<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	$to = "meniranjan@live.com";
	$subject = "Query from www.chineselearningcourse.com";
	$message = "just for testing the website";
	$name = $_REQUEST['nameS'];
	$phone = $_REQUEST['phoneS'];
	$email = $_REQUEST['emailS'];
	$headers = "From: " . $email;
    if(mail($to, $Subject, $message, $Headers) == false) {
        echo 'error';
    }
?>
</body>
</html>
