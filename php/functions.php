<?php
    if (isset($_POST['dataType'])) {
        $url = "http://127.0.0.1:5000/".$_POST['dataType'];
        $data = file_get_contents($url);

        // $res = json_decode(mb_convert_encoding($data,'UTF-8','UTF-8'), true);

        echo $data;
    }
    
?>