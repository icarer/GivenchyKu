<?php
    header("content-type:text/html;charset=utf-8");
    $useremail = $_POST['l-useremail'];
    $userpass = $_POST['l-userpass'];
    $conn = mysql_connect("localhost",'root','root');
	if(!$conn){
		die("连接失败！".mysql_error());
	}else{
		mysql_select_db("mysql_givenchy",$conn);
		$sqlstr = "select * from customers where useremail='$useremail'and userpass='$userpass'";
		$result = mysql_query($sqlstr,$conn);
		if(mysql_num_rows($result)==1){
            echo "1";
        }else{
            echo "0";
        }
		mysql_close($conn);
	}
?>