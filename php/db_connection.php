<?php
    $host = 'localhost';
    $database = 'python_php';
    $username = 'root';
    $password = '';

    $con = mysqli_connect($host, $username, $password, $database);

    if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
    }
?>