<?php
	session_start();
	unset($_SESSION["umobile"]);
	unset($_SESSION["uemail"]);
	unset($_SESSION["uname"]);
	unset($_SESSION["uid"]);
	header("Location:../login.php");

?>