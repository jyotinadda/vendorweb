<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Vendor</title>
</head>
<body>
	<form action="updateVen" method="post">
		<pre>
			Id: <input type="text" name="id" value="${vendor.id}" readOnly/>
			Code:<input type="text" name="code" value="${vendor.code}"/>
			Name:<input type="text" name="name" value="${vendor.name}"/>
			Type:<select name="type">
					<option ${vendor.type=="regular" ? 'selected':'' }>Regular</option>
					<option ${vendor.type=="contract" ? 'selected':'' }>Contract</option>
				 </select>
			Email:<input type="text" name="email" value="${vendor.email}"/>
			Phone:<input type="text" name="phone" value="${vendor.phone}"/>
			Address:<textarea rows="4" cols="50" name="address" >${vendor.address}</textarea>
			
			<input type="submit" value="save" />
			
	</pre>
	</form>
	${msg}
	
	<a href="displayVendors">View All</a>
</body>
</html>