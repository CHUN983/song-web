
<style>
    body {
        background-color: #e8e7d2; /* 設置背景顏色為 #e8e7d2 */
    }
</style>
<?php

$song_id=$_GET["song_id"];
$list_id=$_GET["list_id"];
$todayDate = date("Y/m/d");


include("connection.php");
@mysql_select_db("local_band");//選擇資料庫

$sql_query = "INSERT INTO `user_playlist_song` (`list_id`,`song_id`,`added_date`) VALUES ('$list_id','$song_id', '$todayDate')";
$result=mysql_query($sql_query);

// 檢查是否成功插入資料
if ($result) {
    echo '<script>alert("歌曲已成功加入歌單"); window.close();</script>';
} else {
    echo '<script>alert("此歌單已存在!"); window.close();</script>';
}


?>
