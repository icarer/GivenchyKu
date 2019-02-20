<?php
	header("content-type:text/html;charset=utf-8");
	$phonenum = $_POST["phonenum"];
	$username = $_POST["username"];
	$userpass = $_POST["userpass"];

	$conn = mysql_connect("localhost","root","root");
	if(!$conn){
		die("连接失败！".mysql_error());
	}else{
		mysql_select_db("mysql_givenchy",$conn);
		$sqlstr = "insert into customers values('$phonenum','$username','$userpass')";
		$result = mysql_query($sqlstr,$conn);
		if($result==1){
			echo "1";
		}else{
			echo "0";
		}
		mysql_close($conn);
	}
?>