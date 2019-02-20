//功能：正则验证
//参数：
// 需要验证的类型(email:表示邮箱,phone:表示手机号码；cardid:表示身份证)
// 需要验证的字符串
//返回值：true或false

//regExp1809("email","hello");
function regExp(type,value){
	switch(type){
		case "username": var reg = /^[\u4e00-\u9fa5]{1,8}$/;break;
		case "userxingshi": var reg = /^[\u4e00-\u9fa5]{1,8}$/;break;
        case "useremail": var reg = /^[1-9]\d{6,9}@qq\.com$/;break;
        case "userpass": var reg = /^[A-Z\d]{6,18}$/;break;
	}
	return reg.test(value);
}