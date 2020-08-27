<?php
session_start();
session_unset();
session_destroy();
unset($_SESSION['login_check']);
header("location:index.php");
exit();
?>