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
        <title>Guestbook - [Web Components ( aufgabe01b_formular )]</title>
    </head>
    <body>
        <h1>Web Components ( aufgabe01b_formular ) - Guestbook</h1>

        <script type="text/javascript">
            function fillForm1() {
                document.getElementsByName("name1")[0].value = 'Joe Doe';
                document.getElementsByName("email1")[0].value = 'JoeDoe@domain.com';
                document.getElementsByName("comment1")[0].value = 'Some Comment';
                document.getElementsByName("sports1")[0].checked = true;
                document.getElementsByName("sports1")[1].checked = true;
                document.getElementsByName("sports1")[2].checked = true;
                //        document.theForm1.submit();
            }
            function fillForm2() {
                document.getElementsByName("name2")[0].value = 'Mary Doe';
                document.getElementsByName("email2")[0].value = 'MaryDoe@domain.com';
                document.getElementsByName("comment2")[0].value = 'Some Comment';              
                document.getElementsByName("sports2")[0].checked = true;
                document.getElementsByName("sports2")[1].checked = true;
                document.getElementsByName("sports2")[2].checked = true;
                //        document.theForm2.submit();
            }
        </script>
        <H2>Formular sent by POST:</H2>
        <form method="post" action="FrontController" name="theForm1">
            Name: <input type="text" name="name1" />
            E-Mail address:<input type="text" name="email1" />
            <input type="checkbox" name="sports1" value="bicycle">I love bicyling
            <input type="checkbox" name="sports1" value="wandering">I practice wandering
            <input type="checkbox" name="sports1" value="swimming">I am a swimmer
            Comment: <textarea name="comment1" cols="40" rows="5"></textarea><br/>
            <a href="#" onclick="fillForm1()">Fill the formular with demo data</a><br/>
            <input type="button" value="Fill the formular with demo data" onclick="fillForm1()"  />
            <input type="reset" value="Reset" />
            <input type="submit" value="Submit" />
        </form>
        <H2>Formular sent by GET:</H2>
        <form method="get" action="FrontController" name="theForm2">
            Name: <input type="text" name="name2" />
            E-Mail address:<input type="text" name="email2" />
            <input type="checkbox" name="sports2" value="bicycle">I love bicyling
            <input type="checkbox" name="sports2" value="wandering">I practice wandering
            <input type="checkbox" name="sports2" value="swimming">I am a swimmer
            Comment: <textarea name="comment2" cols="40" rows="5"></textarea><br/>
            <a href="#" onclick="fillForm2()">Fill the formular with demo data</a><br/>
            <input type="button" value="Fill the formular with demo data" onclick="fillForm2()"  />
            <input type="reset" value="Reset" />
            <input type="submit" value="Submit" />
        </form>

    </body>
</html>
