<?php
    session_start();
    if (isset($_SESSION['adminLogined'])) {
        header('Location: admin/dashboard.php');
    }
    else
    {
        header('Location: admin/signIn.php');
    }
?>