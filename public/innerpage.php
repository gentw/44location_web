<?php

set_include_path(get_include_path() . ':' . '.');
require_once('MailGun/Email.php');
use \MailGun\Email;


$subjectEmail = $_POST['i_email'];




$Body = 
        '<label style="font-size: 20px;"><b>Program Name: </b></label>'.$_POST['program_name'].'<br>'.
        '<label><b>Name: </b></label>'.$_POST['i_name'].'<br>'.
        '<label><b>Last Name: </b></label>'.$_POST['i_surname'].'<br>'.
        '<label><b>Email: </b></label>'.$_POST['i_email'].'<br>'.
        '<label><b>Last Name: </b></label>'.$_POST['lname'].'<br>'.
        '<label><b>Phone: </b></label>'.$_POST['i_number'].'<br>'.
        '<label><b>Location: </b></label>'.$_POST['i_location'].'<br>'.
        '<label><b>Subscribe: </b></label>'.$_POST['i_check_sub'].'<br>'.
        '<label><b>Nationality: </b></label>'.$_POST['i_nationality'].'<br>';
                
		
			//$emailFrom = $_POST['booking_email'];

	
//Instantiate with your domain and key (no, that's not my real key)
$email = new Email('postmaster.online', 'key-7cfb4b53d8e17762fd2f82b95ed6ffd5');
//Populate the object
$response = $email->setFrom('postmaster@postmaster.online', 'Inside Program!')
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
