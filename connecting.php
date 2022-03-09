<?php

function connect(){
    $dsn = "mysql:host=localhost;dbname=computer_organization";
    $user = 'root';
    $pass = '';

    try {
        return new PDO($dsn, $user, $pass);
    }
    catch(PDOException $ex) {
        echo $ex->GetMessage();
    }
}
        
    
