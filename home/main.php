<html>
    <head>
        <title>Local Band</title>
        <meta charset="UTF-8">
    </head>
    
    <frameset cols="250,*" " border="2">
        <frameset rows="300,*">
            <frame name="top" scrolling="no" noresize target="contents" src="menu.htm">
            <frame name="list" noresize target="contents" src="list.php"></frame>
        </frameset>
        <frameset rows="350,*">
            <frameset cols="*,*">
                <frame name="contents" src="activity.htm"></frame>
                <frame name="band" scrolling="no" src="band.htm"></frame>
            </frameset>
            <frame name="song" src="song.php"></frame>
        </frameset>

    </frameset>
</html>

<?php

$acc=$_GET["account"];
$pas=$_GET["password"];
$action=$_GET["action"];//登入或創建帳號

session_start();
$_SESSION["acc"] = $acc;


if(!$acc || !$pas){//確保帳密輸入不為空
    $null_fail = true;
    header("Location: login.php?null_fail=" . $null_fail); 
    //確保重定向後，後續代碼不會被執行 
    exit;
}

include("connection.php");
    $select_db = @mysql_select_db("local_band");//選擇資料庫
    if(!$select_db)
    {
        echo '<br>找不到資料庫!<br>';
    }
    else
    {   
        if($action == '登入'){
            $sql_query="SELECT * FROM user WHERE user_name='" . $acc . "' AND user_password='" . $pas . "'";; //$sql_query為這句select語法
            
            $result=mysql_query($sql_query);//mysql_query傳送語法到SQL執行
            // 執行SQL查詢，將結果放入$result
        
            if (mysql_num_rows($result)) {//找到有$acc和$pas這行 計算此資料筆數
            echo '歡迎 ' .$acc. ' !<br>';
     
            } 
            else {
                $login_fail = true;
                header("Location: login.php?login_fail=" . $login_fail); 
                //確保重定向後，後續代碼不會被執行 
                exit;
            }
        }
        else if($action == '創建帳號'){
            //看是不是已經有這個帳號名稱
            $sql_query="SELECT * FROM user WHERE user_name='".$acc."'"; 
            
            $result=mysql_query($sql_query);
        
            if (mysql_num_rows($result)) {//找到已有此$acc 計算此資料筆數
                $create_fail = true;
                header("Location: login.php?create_fail=" . $create_fail); 
                //確保重定向後，後續代碼不會被執行 
                exit;
            }

            //找到目前最大id
            $sql = "SELECT MAX(CAST(SUBSTRING(user_id, 3) AS SIGNED)) FROM user";
            $result=mysql_query($sql);
            $row=mysql_fetch_row( $result);
            //計算下一個id
            $next_id = 'u_' . ($row[0] + 1);
            //新增帳密資料
            $sql_query = "INSERT INTO `user` (`user_id`,`user_name`, `user_password`) VALUES ('$next_id','$acc', '$pas')";
            $result=mysql_query($sql_query);
            
            $create_success=true;
            header("Location: login.php?create_success=" . $create_success); 
            exit;
        }
   
    }
    
?>

