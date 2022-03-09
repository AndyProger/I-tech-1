<?php

try {

    require_once('connecting.php');
    $dbh = connect();
    $item = $_POST['selectedsoft'];
    
    $querySelect = "SELECT DISTINCT c.netname
                    FROM computer c 
                        INNER JOIN computer_software cs ON c.id_computer = cs.fid_computer
                        INNER JOIN software s ON cs.fid_software = s.id_software
                    WHERE s.name = '$item';";

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