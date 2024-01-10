<html>
    <head>
        <?php
        $list_id=$_GET["list_id"];
        $list_name=$_GET["list_name"];
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
            $sql_query="SELECT * FROM user_playlist_song WHERE list_id='".$list_id."'";           
            $result=mysql_query($sql_query);
            echo 
        ?>
    </body>

</html>