
<style>
    body {
        background-color: #e8e7d2; /* 設置背景顏色為 #e8e7d2 */
    }
</style>
<?php
session_start(); 
$acc = $_SESSION['acc']; // 从会话中获取 $acc 变量
echo  $acc.' 的播放清單<br>'; // 输出或使用 $acc


include("connection.php");
@mysql_select_db("local_band");//選擇資料庫

//找到歌曲id
$song=$_GET["song"];
$sql_query="SELECT * FROM song WHERE song_name='".$song."'";
$result=mysql_query($sql_query);
$row=mysql_fetch_row($result);
$song_id=$row[0];

//找到帳號所屬的user_id
$sql_query="SELECT * FROM user WHERE user_name='".$acc."'";           
$result=mysql_query($sql_query);
$row=mysql_fetch_row($result);
$user_id=$row[0]; //使用者編號 可省略印出


//list歌單名稱
$sql_query="SELECT * FROM user_playlist WHERE user_id='".$user_id."'";
$result=mysql_query($sql_query);
$number=1;
$list_name[100];
$list_id[100];

while($row1=mysql_fetch_row($result)){
    $list_name[$number]=$row1[2];
    $list_id[$number]=$row1[0];
   
    $number++;
}

for ($j = 1; $j < $number; $j++) {
    echo '<a href="add_song.php?song_id='.$song_id.'&list_id='.$list_id[$j].'">' . $list_name[$j] . '</a>';//傳送到
    if($j!=$number){
        echo '<br>';
    }
}

?>
