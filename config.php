<?php
    
    $kon = mysqli_connect("localhost", "id9071250_shinta12",'shinta12',"id9071250_posyandu");

    if (mysqli_connect_errno()) {
        echo "Koneksi database gagal : " .mysqli_connect_error();
    }
?>