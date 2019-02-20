<?php
	header("content-type:text/html;charset=utf-8");
	$username = $_POST["username"];
	$userxingshi = $_POST['userxingshi'];
	$useremail = $_POST['useremail'];
	$userpass = $_POST['userpass'];
	$conn = mysql_connect("localhost",'root','root');
	if(!$conn){
		die("连接失败！".mysql_error());
	}else{
		mysql_select_db("mysql_givenchy",$conn);
		$sqlstr = "select * from customers where useremail='$useremail'";
		$result = mysql_query($sqlstr,$conn);
		if(mysql_num_rows($result)==0){
			$sqlstr2 = "insert into customers (username,userxingshi,useremail,userpass) values('$username','$userxingshi','$useremail','$userpass')";
			$result2 = mysql_query($sqlstr2,$conn);
			if($result2==1){
				echo "0";
			}else{
				echo "1";
			}
		}else{
			echo "1";
		}
		mysql_close($conn);
	}
?>