<?php
    session_start();
    if (isset($_SESSION['adminLogined'])) {
        header('Location: dashboard.php');
    }
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>Signin</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="../css/signin.css" rel="stylesheet">

    <!-- Custom styles for this template -->
</head>

<body class="text-center">
    <form class="form-signin" action="../functions.php" method="post">
        <img class="mb-4" src="https://i.pinimg.com/originals/4a/b1/a2/4ab1a291f3b8363f3efe5aeb287baa47.jpg" alt=""
            width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" name="inputEmail" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="inputPassword" id="inputPassword" class="form-control" placeholder="Password" required>

        <button class="btn btn-lg btn-primary btn-block" type="submit" name='signInBtn'>Sign in</button>

    </form>
</body>

</html>