<html>
    <head>
        <?php
            include("connection.php");
            $list_id=$_GET["list_id"];
        ?>
        <meta charset="UTF-8">
        <style>
        body {
            background-color: #e8e7d2; /* 設置背景顏色為 #e8e7d2 */
        }
        
    </style>
    </head>
    <body>
        <?php
            $sql_query="SELECT * FROM song WHERE song_id='".$list_id."'";           
            $result=mysql_query($sql_query);

            $row=mysql_fetch_row($result);
            echo $row[5];
            
        ?>
    </body>

</html>