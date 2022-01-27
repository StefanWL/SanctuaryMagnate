<!DOCTYPE html>
<html lang="en">
<?php
    $db_host = '127.0.0.1';
    $db_user = 'root';
    $db_password = 'root';
    $db_db = 'SanctuaryMagnate';
    $db_port = 8889;
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $command = new mysqli($db_host, $db_user, $db_password, $db_db, $db_port);
        if(!preg_match("/[[!@#$%^&*_+\-=\[\]{};:\\|.<>\/?]]/")){
            $command -> query("call " . $_POST['writeLine']);
        }
        $command -> close();
    }
    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_db, $db_port);
?>
<head>
    <meta charset="utf-8" />
    <title>Sanctuary Magnate</title>
    <link rel="preconnect" href="https://fonts.googleapis.com"> 
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
    <link href="https://fonts.googleapis.com/css2?family=Courier+Prime&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="sanctuarymagnate.css" />
    <script type="text/javascript" src="sanctuarymagnate.js"></script>
</head>
<body>
    <div class="flex-container">
        <form id="console-input" class="flex-item" method="POST">
            <label for="writeLine">>></label>
            <input name="writeLine" type="text" autocomplete="off" autofocus>
            <div id="console-output"></div>
        </form>
        <div id="gui" class="flex-item">
            <h1>Inventory</h1>
            <div id="buttons">
                <button id="animals-button">Animals</button>
                <button id="enclosures-button">Enclosures</button>
                <button id="food-button">Food</button>
                <button id="staff-button">Staff</button>
                <button id="medicine-button">Medicine</button>
            </div>
            <div id="tables">
                <?php
                    $col_order = [2,3,4,5,7];
                    if ($result = $mysqli -> query("SELECT * FROM Animals")) {
                        $rows = $result -> fetch_all(MYSQLI_NUM);
                        $fieldinfo = $result -> fetch_fields();
                        foreach($col_order as $col_num){
                            echo '<table id="' . $fieldinfo[$col_num] -> name . '-table" class="hidden">';
                            echo '<tr>
                                    <th>Animal</th>
                                    <th>' . $fieldinfo[$col_num] -> name . '</th>
                                  </tr>';
                            foreach($rows as $row){
                                echo '<tr>
                                        <td>' . $row[1] . '</td>
                                        <td>' . $row[$col_num] . '</td>
                                      </tr>';
                            }
                            echo "</table>";
                        }
                    }
                    $result -> free_result();
                    $mysqli->close();
                ?>
            </div>
            <h3>Log</h3>
            <?php
                $log = new mysqli($db_host, $db_user, $db_password, $db_db, $db_port);
                if ($log_result = $log -> query("SELECT * FROM Log")) {
                    $fieldinfo = $log_result -> fetch_fields();
                    $row = $log_result -> fetch_row();
                    echo "<table>
                            <tr>";
                    foreach ($fieldinfo as $val){
                        echo "<th>" . $val -> name . "</th>";
                    }
                    echo   "</tr>
                            <tr>";
                    foreach ($row as $item){
                        echo "<td>" . $item . "</td>";
                    }
                    echo "</table>";
                }
            ?>
        </div>
    </div>
</body>