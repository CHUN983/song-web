<html>
    <head>
        <title>上</title>
        <meta charset="UTF-8">
    </head>
    <body>
        
    </body>
</html>

<?php
session_start(); 
$acc = $_SESSION['acc']; // 从会话中获取 $acc 变量
echo  $acc.' 的播放清單<br>'; // 输出或使用 $acc

include("connection.php");
@mysql_select_db("local_band");//選擇資料庫

//找到帳號所屬的user_id
$sql_query="SELECT * FROM user WHERE user_name='".$acc."'";           
$result=mysql_query($sql_query);
$row=mysql_fetch_row($result);
$user_id=$row[0]; //使用者編號 可省略印出

$sql_query="SELECT * FROM user_playlist WHERE user_id='".$user_id."'";
$result=mysql_query($sql_query);

//list歌單名稱
$number=1;
$list_name[100];
$list_id[100];
while($row1=mysql_fetch_row($result)){
    $list_name[$number]=$row1[2];
    $list_id[$number]=$row1[0];
    $number++;
}

for ($j = 1; $j < $number; $j++) {
    echo '<a href="song.php?list_id='.$list_id[$j].'&list_name='.$list_name[$j].'" target="song">' . $list_name[$j] . '</a>';//傳送到
    echo '<br>';
}
?>
