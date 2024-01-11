<html>
    <head>
        <meta charset="UTF-8">
        <title>Javascript</title>
    </head>

    <style>

        body {
            background-color: #e8e7d2; /* 將整個頁面的背景色設為黑色 */
            color: black; /* 設置文字顏色為白色 */
        }
        
        .outside{
            position: relative;
            width: 80%; /* 使用百分比 */
            max-width: 800px; /* 添加最大寬度以防止過大 */
            margin:10 auto;
            border:1px solid blue;
        }

        .img{
            width: 100%;
            height: 100%;
        }

        .serial{
            position: absolute;
            top:10px;
            left: 10px;
            background-color: lightblue;
        }

        .prev{
            cursor: pointer;
            position: absolute;
            left: 5px;
            top:50%;
            background-color:rgba(0, 0, 0, 0.1);
            color:yellow;
            font-size: 20px;
        }

        .next{
            cursor: pointer;
            position: absolute;
            right: 5px;
            top:50%;
            background-color: rgba(0, 0, 0, 0.1);
            color:yellow;
            font-size: 20px;
        }

        .prev:hover,.next:hover{
            background-color: blue;
        }

        .dot{
            /* width: 9px;
            height: 9px;
            margin: 0 5px;
            border-radius:50%;
            border:solid black 1px;
            display: inline-block;
            cursor:pointer;
            background-color: lightgrey; */
        }
        
        .container {
            display: flex;
        }
        .left-side {
            width: 50%; /* 或者根据需要调整宽度 */
        }
        .right-side {
            width: 50%; /* 或者根据需要调整宽度 */
        }

        .video-container {
            position: relative;
            width: 100%;
            padding-bottom: 56.25%; /* 16:9 高寬比 */
        }

        .video-embed {
            position: absolute;
            top: 0;
            left: -300;
            width: 100%;
            height: 100%;
        }

        .img {
            width: 310px; /* 設置固定寬度 */
            height: 300px; /* 設置固定高度 */
            display: block;
            margin: 0; /* 清除預設 margin */
            margin-left: 0%; /* 調整左偏移的值 */
        }

    </style>

<?php
    include("connection.php");
    $select_db = @mysql_select_db("local_band");//選擇資料庫
    $song_id=$_GET["song_id"];

    $sql_query="SELECT * FROM song WHERE song_id='".$song_id."'";           
    $result=mysql_query($sql_query);
    $info=mysql_fetch_row($result);
    
    $sql_query1="SELECT * FROM band WHERE band_id='".$info[1]."'";      
    $result1=mysql_query($sql_query1);
    $band=mysql_fetch_row($result1);

    $sql_query2="SELECT * FROM album WHERE album_id='".$info[2]."'";      
    $result2=mysql_query($sql_query2);
    $album=mysql_fetch_row($result2);


?>

<div class="container">
    <div class="left-side">
        <?php
            echo '歌名:'.$info[3].'<br>';
            echo '歌曲長度:'.$info[4].'<br>';
            echo '專輯:'.$album[1].'   發行年份:'.$album[2].'<br>';
            echo '樂團:'.$band[1].'   出道年份:'.$band[2].'<br>';
            echo '<img class="img" src="樂團/'.$info[1].'.jpg">';
        ?>
    </div>
    <div class="right-side">
        <div class="video-container">
            <div class="video-embed">
                <?php
                    // 假设$info[5]包含视频的嵌入代码或视频文件的路径
                    echo $info[5];
                ?>
            </div>
        </div>
    </div>
</div>