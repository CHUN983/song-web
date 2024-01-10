<<html>
    <head>
        <title>下</title>
        <meta charset="UTF-8">
    </head>
    <body>
        歌單:
    </body>
</html>

<?php

$list_id=$_GET["list_id"];
$list_name=$_GET["list_name"];
echo $list_id;
echo $list_name;
include("connection.php");
@mysql_select_db("local_band");//選擇資料庫

//找到帳號所屬的user_id
$sql_query="SELECT * FROM user_playlist_song WHERE list_id='".$list_id."'";           
$result=mysql_query($sql_query);

while($row=mysql_fetch_row($result)){
    $sql_query1="SELECT * FROM song WHERE song_id='".$row[1]."'";      
    $result1=mysql_query($sql_query1);
    $info=mysql_fetch_row($result1);
    
    //$info[] 0為歌曲編號 1為歌曲所屬樂團 2為歌曲所屬專輯 3為歌曲名稱 4為歌曲長度

    echo '<br>歌名:'.$info[3];

    echo '  加入日期:'.$row[2].'<br>';
}
?>