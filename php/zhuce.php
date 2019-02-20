<?php
header("Content-type=text/html charset=utf-8"); 
	$username=$_POST['username'];
	$userwho=$_POST['userwho'];
	$userpass=$_POST['userpass'];
	$useremail=$_POST['useremail'];
	$userlocal=$_POST['userlocal'];
	$userfamily=$_POST['userfamily'];
	 
// 把数据保存在数据库中
// 创建连接
$conn=mysql_connect('localhost','root','root');
if(!$conn){
	echo "服务器端出错，数据库未连接上";
}else{
	// 连接上后选择数据库，传输数据
	mysql_select_db("Givenchy",$conn)
	$sqlstr="inset into useinfo userinfo(userwho,useranme,userfamily,userlocal,useremail.userpass)
		values('$userwho','$username','$userfamily','$userlocal','$useremail','$userpass')";

	mysql_query($sqlstr,$conn);
	// 关闭数据库
	mysql_close($conn);

	echo "注册成功";
}
?>