<TT>
<?php
    include("connection.php");

    $select_db = @mysql_select_db("song_list");
    if (!$select_db) {
        echo '<br>找不到資料庫!<br>';
    } else {
        echo '<center> <table width=100% border=0 style="background-color: #e8e7d2;">'; // 設置背景色>';
        echo '<tr>';
        $i = 1;
        $sum = 1;
        while ($sum <= 25) {
            
            $sql_query = "select * from song where song_id='s_" . $i . "' ";
            $result = mysql_query($sql_query);

            $row = mysql_fetch_row($result);
            echo '<td width=20%><center><img src=音樂/'.$sum.'.jpg  width=100 height=100><br>';
            echo '<a href=>' . $row[3] . '</a>';
            $i += 4;
            $sum++;
            if($sum % 5 == 1) echo "<tr>";
        }

        echo '</table>';
    }
?>
