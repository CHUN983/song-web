<?php
	//連接資料庫
	$location = "localhost"; //連到本機
	$account = "root";
	$password ="e20040731";

	if(isset($location)&&isset($account)&&isset($password)){
		$link=mysql_pconnect($location,$account,$password);
		//mysql_pconnect連接狀況給link	
		if(!$link){
			echo '無法連接資料庫';
			exit();
		}

	}
?>

