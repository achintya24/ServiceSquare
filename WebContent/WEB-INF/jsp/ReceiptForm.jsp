<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<form id="frmPDF" action="" name="frmPDF" method="post">
            <table width="100%" border="2" style='background-color:#f2dbdb;color: #943634; line-height:20px;border:1px solid #943634;font-family: arial, verdana; font-size: 13px;'>
                <tr>
		<th>ID</th>
		<th>Bill</th>
		<th>Worker_Name</th>
		<th>Worker_Contactno</th>
		<th>Worker_Exp</th>
		<th>Date of Visit</th>
		
	</tr>
	<c:forEach items="${rlist }" var="w">
	<tr>
		<td>${w.user_id }</td>
		<td>${w.money }</td>
		<td>${w.worker_name }</td>
		<td>${w.worker_contact_no }</td>
		<td>${w.worker_exp }</td>
		<td>${w.worker_startdate }</td>

	</tr>
	</c:forEach>
	
	
	</table>
                <%if(!"false".equals(request.getParameter("btn"))){%>
                <div align="center">
                    <br/>

                </div>
               <%}%>
        </form>
</body>
</html>
