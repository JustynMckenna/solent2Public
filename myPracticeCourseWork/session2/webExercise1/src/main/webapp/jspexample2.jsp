<%-- 
    Document   : jspexample2
    Created on : 31 Oct 2021, 21:39:55
    Author     : Justy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
// any valid java code can go between the escape sequences

// here we are looking for the userName value in the web request which called this page
    String name = request.getParameter("userName");
    String address = request.getParameter("address");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example 2</title>
    </head>
    <body>
        <h1>JSP Example 2: Form Request Examples</h1>

        Hello I think your name is <%=name %>
        <br>
        I think Your Address is <%=address %>
         

        <!-- starting the href with ./ means you are referring relative to the root of this page -->

        <!-- get uses url encoded parameters -->
        <form action="./jspexample2.jsp" method="get">
            <p>user name <input type="text" name="userName" value=""></p>
            <button type="submit" >add name using GET</button>
        </form> 
        <br>

        <!-- post avoids url encoded parameters -->
        <form action="./jspexample2.jsp" method="post">
            <!-- here we are pre filling the value with the name variable -->
            <p>user name <input type="text" name="userName" value="<%=name %>"></p>
            <button type="submit" >add name using POST</button>
        </form> 
        <br>    
            
        <!-- My coding for the address -->
        
        <form action="./jspexample2.jsp" method="get">
            <p>Your Address <input type="text" name="address" value=""></p>
            <button type="submit" >add address using GET</button>
        </form> 
        
    </body>
</html>