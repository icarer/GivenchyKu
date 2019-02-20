//功能：获取dom元素的样式属性
//参数：dom对象，样式属性名
//返回值：属性值
//
//
function getStyle(domObj,attr){
	if(domObj.currentStyle){
		return domObj.currentStyle[attr];
	}else{
		return window.getComputedStyle(domObj)[attr];
	}
}