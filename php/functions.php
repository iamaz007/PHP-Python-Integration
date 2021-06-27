<?php
    session_start();
    include('db_connection.php');
    
    if (isset($_POST['dataType'])) {
        $url = "http://127.0.0.1:5000/".$_POST['dataType'];
        // $url = "http://127.0.0.1:5000/women-cloths";
        $data = file_get_contents($url);
        
        $res = json_decode(mb_convert_encoding($data,'UTF-8','UTF-8'), true);

        // inserting in  women_cloths
        $temp = $res['list'];
        for ($i=0; $i < count($temp); $i++) { 
            for ($j=0; $j < count($temp[$i]); $j++) { 
                $title = addslashes($temp[$i][$j]['title']);
                $price = addslashes($temp[$i][$j]['price']);
                $image = addslashes($temp[$i][$j]['image']);

                $sql = "INSERT INTO  ".$_POST['dataType']." (title, price, image)
                VALUES ('".$title."', '".$price."', '".$image."')";

                if ($con->query($sql) === TRUE) {
                    // echo "New record created successfully";
                } else {
                    // echo "Error: " . $sql . "<br>" . $con->error;
                }

            }
        }

        $con->close();
        echo $data;
    }

    if (isset($_POST['dataDeleteType'])) {
        $sql = "TRUNCATE TABLE  ".$_POST['dataDeleteType']." ";
        if ($con->query($sql) === TRUE) {
            echo "Table Cleared successfully";
        } else {
            echo "Error: " . $sql . "<br>" . $con->error;
        }
    }

    if (isset($_POST['dataReadType'])) {
        $sql="SELECT * FROM ".$_POST['dataReadType']."";
        $result = mysqli_query($con,$sql);
        $count = mysqli_num_rows($result);
        $dataAppend = '';
        if ($count > 0) {
            while($row = mysqli_fetch_array($result)) {
                $dataAppend .= '<div class="col-md-4">
                                <div class="card mb-4 box-shadow">
                                    <img class="card-img-top"
                                        src="'.$row['image'].'"
                                        alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-text">'.$row['title'].'</p>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                            </div>
                                            <small class="text-muted">'.$row['price'].'</small>
                                        </div>
                                    </div>
                                </div>
                            </div>';
                }
        } else {
            $dataAppend = 'No Record found';
        }
        

        echo $dataAppend;
    }

    if (isset($_POST['signInBtn'])) {
        $inputEmail = mysqli_real_escape_string($con,$_POST['inputEmail']);
        $inputPassword = md5(mysqli_real_escape_string($con,$_POST['inputPassword'])); 
        
        $sql = "SELECT id FROM admin WHERE email = '$inputEmail' and password = '$inputPassword'";
        $result = mysqli_query($con,$sql);
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        
        $count = mysqli_num_rows($result);
        
        // If result matched $inputEmail and $inputPassword, table row must be 1 row
          
        if($count == 1) {
           
           $_SESSION['adminLogined'] = $row['id'];
           
           header("location: /admin/dashboard.php");
        }else {
           $error = "Your Login Name or Password is invalid";
           header("location: /admin/signIn.php");
        }
    }

    if (isset($_GET['action'])) {
        if ($_GET['action'] == 'logout') {
            unset($_SESSION['adminLogined']); // deleting session of logined user
            header('Location: index.php');
        }
    }
    
?>