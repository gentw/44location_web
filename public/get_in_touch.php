<?php

set_include_path(get_include_path() . ':' . '.');
require_once('MailGun/Email.php');
use \MailGun\Email;


$subjectEmail = $_POST['g_email'];




$Body = 
        '<label><b>Name: </b></label>'.$_POST['g_name'].'<br>'.
        '<label><b>Phone Number: </b></label>'.$_POST['g_number'].'<br>'.
        '<label><b>Email: </b></label>'.$_POST['g_email'].'<br>'.
        '<label><b>Current Location: </b></label>'.$_POST['g_location'].'<br>'.
        '<label><b>Program Selected: </b></label>'.$_POST['g_program'].'<br>'.
        '<label><b>Nationality: </b></label>'.$_POST['g_nationality'].'<br>'.
        '<label><b>Terms & Conditions: </b></label>'.$_POST['check_terms'].'<br>'.
        '<label><b>Message: </b></label>'.$_POST['g_message'].'<br>';
                

		
		
			//$emailFrom = $_POST['booking_email'];

	
//Instantiate with your domain and key (no, that's not my real key)
$email = new Email('postmaster.online', 'key-7cfb4b53d8e17762fd2f82b95ed6ffd5');
//Populate the object
$response = $email->setFrom('postmaster@postmaster.online', 'Get In Touch with Us')
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

