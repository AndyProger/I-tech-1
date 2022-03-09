<?php

try {

    require_once('connecting.php');
    $dbh = connect();
    
    $querySelect = 'SELECT DISTINCT c.netname
                    FROM computer c
                    WHERE c.guarantee < CURRENT_DATE';

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
        
    
