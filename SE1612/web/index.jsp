<%-- 
    Document   : index
    Created on : Jan 13, 2022, 11:20:23 AM
    Author     : docao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%! String destin; %>
        <%! public String getDestination() {
                return destin;
            }%>
        <%--<%! // Circle a = new Circle(2.0);%>--%>
        
        <%! String name = new String("JSP World"); %>
        <%! public String getName() {
                return name;
            }%>
        <B><%= getName()%></B>
        
            <%
                String var1 = request.getParameter("name");
                out.println(var1);
            %>

    </body>
</html>
