<meta charset="UTF-8">
    <style>
        body {
            background-color: #e8e7d2; /* 設置背景顏色為 #e8e7d2 */
        }
        
    </style>

    <!-- ****************回首頁*************************** -->
    <form method="post" action="song.php">
        <input type="hidden" id="listIdInput" name="listId" value="0">

        <!-- 回首頁按鈕 -->
        <button type="submit">回首頁</button>
    </form>
    <!-- ************************************************ -->

    <TT>
    <?php
        include("connection.php");
        $list_id=$_GET["list_id"];
        $list_name=$_GET["list_name"];
  
        $select_db = @mysql_select_db("local_band");
        if (!$select_db) {
            echo '<br>找不到資料庫!<br>';
        } else {
            $sql_query="SELECT * FROM user_playlist_song WHERE list_id='".$list_id."'";           
            $result=mysql_query($sql_query);
            
            echo '<body background-color: #e8e7d2>';

            //如果點擊列表出現列表，不然出現首頁
            if(mysql_num_rows($result)){
                
                //引入script
                echo '<script src="js/button.js"></script>';
                while($row=mysql_fetch_row($result)){
                    $sql_query1="SELECT * FROM song WHERE song_id='".$row[1]."'";      
                    $result1=mysql_query($sql_query1);
                    $info=mysql_fetch_row($result1);
                    
                    //$info[] 0為歌曲編號 1為歌曲所屬樂團 2為歌曲所屬專輯 3為歌曲名稱 4為歌曲長度
                
                    echo '<br>歌名:'.$info[3];
                
                    echo '  加入日期:'.$row[2].'<br>';
                }
            }else{
                echo '<center> <table width=100% border=0 style="background-color: #e8e7d2;">'; // 設置背景色>';
                echo '<tr>';
                $i = 1;
                $sum = 1;
                while ($sum <= 25) {
                    
                    $sql_query = "select * from song where song_id='s_" . $i . "' ";
                    $result = mysql_query($sql_query);
        
                    $row = mysql_fetch_row($result);
                    echo '<td width=20%><center><img src=音樂/'.$sum.'.jpg  width=100 height=100><br>';
                    echo '<a href="video.php?list_id='.$row[0].'" target="band">'.$row[3].'</a>';

                    $i += 4;
                    $sum++;
                    if($sum % 5 == 1) echo "<tr>";
                }
        
                echo '</table>';
            }

        }
    ?>
