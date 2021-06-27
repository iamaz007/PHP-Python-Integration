<?php
    include('db_connection.php');
    
    if (isset($_POST['dataType'])) {
        $url = "http://127.0.0.1:5000/".$_POST['dataType'];
        // $url = "http://127.0.0.1:5000/women-cloths";
        $data = file_get_contents($url);
        echo $data;
        $res = json_decode(mb_convert_encoding($data,'UTF-8','UTF-8'), true);

        // inserting in  women_cloths
        $temp = $res['list'];
        for ($i=0; $i < count($temp); $i++) { 
            for ($j=0; $j < count($temp[$i]); $j++) { 
                $title = addslashes($temp[$i][$j]['title']);
                $price = addslashes($temp[$i][$j]['price']);
                $image = addslashes($temp[$i][$j]['image']);

                $sql = "INSERT INTO  women_cloths (title, price, image)
                VALUES ('".$title."', '".$price."', '".$image."')";

                if ($con->query($sql) === TRUE) {
                    // echo "New record created successfully";
                } else {
                    // echo "Error: " . $sql . "<br>" . $con->error;
                }

            }
        }

        $con->close();
        
    }
    
?>