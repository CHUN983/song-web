<head>
    <meta charset="UTF-8">
    <style>
        body {
            background-color: #e8e7d2; /* 設置背景顏色為 #e8e7d2 */
        }

        .plusButtonContainer {
            position: relative;
            width: 25px; /* 圓的直徑 */
            height: 25px;
            border-radius: 50%;
            background-color: #5D5D32;
            cursor: pointer;
        }

        .plusButton {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            border: none;
            background-color: transparent;
            color: white;
            font-size: 20px;
            cursor: pointer;
        }

        

        .delete-button {
            display: inline-block;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background-color: #BC5252;
            color: white;
            text-align: center;
            line-height: 20px;
            cursor: pointer;
            font-weight: bold; /* 將字體變粗體 */
        }

    </style>

    <script src="function.js"></script>
</head>

<!-- ****************回首頁*************************** -->
<form method="get" action="song.php">
    <input type="hidden" id="back" name="back" value="1">

    <!-- 回首頁按鈕 -->
    <button type="submit">回首頁</button>
</form>
<!-- ************************************************ -->

<?php
include("connection.php");
$song_id=$_GET["song_id"];
$sql_query="DELETE FROM user_playlist_song WHERE song_id ='".$song_id."'";
$result=mysql_query($sql_query);

$list_id=$_GET["list_id"];
$sql_query="SELECT * FROM user_playlist_song WHERE list_id='".$list_id."'";           
$result=mysql_query($sql_query);

if(mysql_num_rows($result)){
    //引入script
        
    while($row=mysql_fetch_row($result)){
        $sql_query1="SELECT * FROM song WHERE song_id='".$row[1]."'";      
        $result1=mysql_query($sql_query1);
        $info=mysql_fetch_row($result1);


        //刪除符號
        echo '<div class="delete-button" onclick="confirmDelete('.$rwo[1].')">-</div>';
        
        // 歌名和日期的容器
        echo '  歌名:' . $info[3];
        echo '  加入日期:' . $row[2];
        echo '<p>';
    }
 }
 ?>