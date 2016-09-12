<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Example of Bootstrap 3 Dropdowns within Navs</title>
<style type="text/css">
	.bs-example{
    	margin: 20px;
    }
    hr{
        margin: 60px 0;
    }
</style>
 <link href="../../../css/menustyle.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
</head>
<body>
<div class="bs-example">
    <ul class="nav nav-pills">
      <!--   <li class="active" data-toggle=""  ><a href="#">Home</a></li> -->
         <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">USER <b class="caret"></b></a>
            <ul class="dropdown-menu">
            <form:form action="adduser" modelAttribute="command" method="post">
                <li><input type="submit"  class="link-lookalike" value="Add User" /></li>
                </form:form>
                <li><a href="#">Drafts</a></li>
                <li><a href="#">Sent Items</a></li>
                <li class="divider"></li>
                <li><a href="#">Trash</a></li>
            </ul>
        </li>        <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">CUSTOMER <b class="caret"></b></a>
            <ul class="dropdown-menu">
            <form:form action="adduser" modelAttribute="command" method="post">
                <li><input type="submit"  class="link-lookalike" value="Add User" /></li>
                </form:form>
                <li><a href="#">Drafts</a></li>
                <li><a href="#">Sent Items</a></li>
                <li class="divider"></li>
                <li><a href="#">Trash</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">REPORT <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="login">Inbox</a></li>
                <li><a href="#">Drafts</a></li>
                <li><a href="#">Sent Items</a></li>
                <li class="divider"></li>
                <li><a href="#">Trash</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">USER MANAGEMENT <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="login">Inbox</a></li>
                <li><a href="#">Drafts</a></li>
                <li><a href="#">Sent Items</a></li>
                <li class="divider"></li>
                <li><a href="#">Trash</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" data-toggle="dropdown" class="dropdown-toggle">CUSTOMER MANAGEMENT <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="login">Inbox</a></li>
                <li><a href="#">Drafts</a></li>
                <li><a href="#">Sent Items</a></li>
                <li class="divider"></li>
                <li><a href="#">Trash</a></li>
            </ul>
      </div>
</body>
</html>                                		