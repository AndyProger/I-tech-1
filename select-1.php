<?php

try {

    require_once('connecting.php');
    $dbh = connect();
    $item = $_POST['selectedproc'];
    
    $querySelect = "SELECT DISTINCT c.netname
                    FROM computer c 
                        INNER JOIN processor p ON p.id_processor = c.fid_processor
                    WHERE p.name = '$item';";

    $i = 0;
    foreach($dbh->query($querySelect) as $row) {
        $i++;
        echo "$i) $row[0]<br>";
    }
}
catch(PDOException $ex) {
    echo $ex->GetMessage();
}

$dbh = null;
        
    
