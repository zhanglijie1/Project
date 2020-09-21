  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <body>
    <div class="input-group">
    <button type="button" style='font-size: 16px;'
        class="btn btn-default" id="addAchievebtn"
        onclick="addSelect(this.form,this.parentNode);">添加查询条件</button>
    <button type="button" style='font-size: 16px;'
        class="btn btn-default" id="delAchievebtn" onclick="delSelect();">去除查询条件   </button>
</div>
<br>
<div id="root"></div>
<script type="text/javascript">
var number = 0;
function insertAfter(newElement, targetElement) {
var parent = targetElement.parentNode;
if (parent.lastChild == targetElement) {
    // 如果最后的节点是目标元素，则直接添加。因为默认是最后      
    parent.appendChild(newElement);
} else {
    parent.insertBefore(newElement, targetElement.nextSibling);
    //如果不是，则插入在目标元素的下一个兄弟节点 的前面。也就是目标元素的后面。  
}
}

function addSelect(form, afterElement) {
// 定义新增序号 
number++;
// 创建div  
var div = document.createElement("div");
div.setAttribute("class", "input-group");

// 创建select  
var selectField = document.createElement("select");
selectField.setAttribute("class", "form-control");
selectField.setAttribute("style", "width:50%");
selectField.setAttribute("id", "select" + number);
//添加下拉框选项
var option = document.createElement("option");
option.appendChild(document.createTextNode("exceptionType"));
selectField.appendChild(option);
var option = document.createElement("option");
option.appendChild(document.createTextNode("limitStrategy"));
selectField.appendChild(option);
var option = document.createElement("option");
option.appendChild(document.createTextNode("code"));
selectField.appendChild(option);
// 把下拉框放入div  
div.appendChild(selectField);

//创建文本输入框
var textField = document.createElement("input");
textField.setAttribute("type", "text");
textField.setAttribute("class", "form-control");
textField.setAttribute("style", "width:50%")
textField.setAttribute("placeholder", "输入条件参数");
textField.setAttribute("id", "text" + number);
// 把输入框放入div  
div.appendChild(textField);

var root = document.getElementById("root");

insertAfter(div, root);

return false;
}

function delSelect() {
if (number > 0) { // If there's more than one text box  
    // Remove the last one added  
    var node = document.getElementById("select" + number).parentNode;
    node.parentNode.removeChild(node);
    number--;
}
}
</script>

  </body>
</html>
