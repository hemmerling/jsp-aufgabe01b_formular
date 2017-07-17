<%-- 
    Document   : createperson
    Created on : 17.07.2017, 17:33:53
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guestbook - [Web Components ( aufgabe02_menu )]</title>
    </head>
    <body>
        <h1>Web Components ( aufgabe02_menu ) - Guestbook</h1>

        <script type="text/javascript">
            function fillForm() {
                document.getElementsByName("name")[0].value = 'Joe Doe';
                document.getElementsByName("email")[0].value = 'JoeDoe@domain.com';
                document.getElementsByName("comment")[0].value = 'Some Comment';
                //        document.theForm.submit();
            }
        </script>
        <P ALIGN=LEFT>
        <form action="createperson.jsp" name="theForm">
            Name: <br/><input type="text" name="name" /> <br/> <br/>
            E-Mail address: <br/><input type="text" name="email" /> <br/> <br/>  
            Comment: <br/><textarea name="comment" cols="40" rows="5"></textarea>
            <br/><br/>
            //<a href="#" onclick="fillForm()">Fill the formular with demo data</a> <br/><br/>
            <input type="button" value="Fill the formular with demo data" onclick="fillForm()"  />
            <input type="reset" value="Reset" />
            <input type="submit" value="Submit" />
        </form></P> 
</body>
</html>
