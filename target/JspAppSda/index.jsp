<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: vmtr0
  Date: 12.05.2019
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
        private int add(int a, int b) {
            return a + b;
        };
        private String hello = "Hi";

        private ArrayList createArray(int firstNr, int lastNr) {
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i = firstNr; i <= lastNr; i++) {
                arrayList.add(i);
            }
            return arrayList;
        };
        private String word = "times";
    %>

    <%= hello%><br> Suma:
    <%= add(4,2)%><br>
    <%= createArray(2,8)%><br>

    <%
        for (int i = 0; i < 5; i++) {
            out.println(i);
            %><br>
    <%
        }
    %><br>
    <ul>
    <%
        ArrayList<Integer> list = new ArrayList<>(createArray(1,49));
        for (int i = 0; i < list.size(); i++) {
            %>
        <li>


            <%
                if (list.get(i) == 1) {
                    out.print(list.get(i) + " time" );
                } else
            out.print(list.get(i) + " " + word);
            %>
        </li>
        <%
        }
    %>
    </ul>



    <% out.print("Hello World!");%><br>
    <% out.print("Today is: ");%><br>
    <% out.print(new java.util.Date());%>



</body>
</html>
