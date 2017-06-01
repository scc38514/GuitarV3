<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查询结果</title>
</head>
<body>
<center>
查询结果显示如下：<br /><br />
<div>
	<table  border="3" cellspacing="1" cellpadding="0">
		<thead>
			<tr>
				<th>serialNumber</th>
				<th>price</th>
				<th>builder</th>
				<th>model</th>
				<th>type</th>
				<th>numStrings</th>
				<th>backWood</th>
				<th>topWood</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="#session.GuitarsList" id="guitar">
			<tr>
				<td class="serialNumber"><s:property value="#guitar.serialNumber"/></td>
				<td class="price"><s:property value="#guitar.price"/></td>
				<td class="builder"><s:property value="#guitar.spec.builder"/></td>
				<td class="model"><s:property value='#guitar.spec.model'/></td>
				<td class="type"><s:property value="#guitar.spec.type"/></td>
				<td class="numStrings"><s:property value="#guitar.spec.numStrings"/></td>
				<td class="backwWood"><s:property value="#guitar.spec.backWood"/></td>
				<td class="topWood"><s:property value="#guitar.spec.topWood"/></td>
				<td class="delete"><a href="deleteGuitar?serialNumber=<s:property value='#guitar.serialNumber'/>">删除</a></td>
			</tr>
			</s:iterator>
		</tbody>
	</table></br>
			<input type="button" name="Submit" value="返回" onclick ="location.href='index'"/>
</div>	
</center>
</body>
</html>