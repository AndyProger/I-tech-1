<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <!-- 1 select -->

    <form action="select-1.php" method="POST">
        <select name="selectedproc">
            <?php
            require_once('connecting.php');
            $dbh = connect();
            
            $querySelect = 'SELECT p.name FROM processor p';
                    
            foreach($dbh->query($querySelect) as $item)
                echo "<option value='$item[0]'>" . $item[0] . '</option>';
            ?>
        </select>
        <input type="submit" value="Submit">
    </form>

    <br><br>

    <!-- 2 select -->

    <form action="select-2.php" method="POST">
        <select name="selectedsoft">
            <?php
            require_once('connecting.php');
            $dbh = connect();
            
            $querySelect = 'SELECT s.name FROM software s';
                    
            foreach($dbh->query($querySelect) as $item)
                echo "<option value='$item[0]'>" . $item[0] . '</option>';
            ?>
        </select>
        <input type="submit" value="Submit">
    </form>

    <br><br>

    <!-- 3 select -->

    <form action="select-3.php" method="POST">
        <input name="expiredGuaranteeBtn" type="submit" value="Get a list of computers with expired guarantee"/>
    </form>

</body>
</html>