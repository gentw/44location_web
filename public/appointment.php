<?php

set_include_path(get_include_path() . ':' . '.');
require_once('MailGun/Email.php');
use \MailGun\Email;


$subjectEmail = $_POST['a_email'];




$Body = 
        '<label><b>Name: </b></label>'.$_POST['a_name'].'<br>'.
        '<label><b>Phone: </b></label>'.$_POST['a_phone'].'<br>'.
        '<label><b>Email: </b></label>'.$_POST['a_email'].'<br>'.
        '<label><b>Message: </b></label>'.$_POST['a_message'].'<br>';		
			//$emailFrom = $_POST['booking_email'];

	
//Instantiate with your domain and key (no, that's not my real key)
$email = new Email('postmaster.online', 'key-7cfb4b53d8e17762fd2f82b95ed6ffd5');
//Populate the object
$response = $email->setFrom('postmaster@postmaster.online', 'Appointments General Email')
    ->addTo('rilindp@gmail.com')
    ->setSubject($subjectEmail)
    ->setHtml($Body)
    ->setTestMode(false)
    ->send();
if ($response->getHttpCode() !== 200) {
    throw new \Exception('Mail failed !');
} else {
    echo 'Email sent successfully';
}

?>

