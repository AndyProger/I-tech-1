<?php

try {

    require_once('connecting.php');
    $dbh = connect();
    $item = $_POST['selectedproc'];
    
    $querySelect = "SELECT DISTINCT c.netname
                    FROM computer c 
                        INNER JOIN processor p ON p.id_processor = c.fid_processor
                    WHERE p.name = '$item';";

    echo '<ol>';
    foreach($dbh->query($querySelect) as $row)
        echo '<li class = "listItem">', $row[0], '</li>';
    echo '</ol>';
}
catch(PDOException $ex) {
    echo $ex->GetMessage();
}

$dbh = null;
        
    
