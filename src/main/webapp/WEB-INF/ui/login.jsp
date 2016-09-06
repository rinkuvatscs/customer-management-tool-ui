<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>


     
        <title>Customer Management Tool</title>
        <link href="../../css/loginstyle.css" rel="stylesheet" type="text/css" />

    </head>
<body>
<form:form action="login" modelAttribute="command" method="post">
<table style="width:100%">
<tr>
  <td colspan="2"><div align="center"><header >Customer Management Tool</header></div></td>
  </tr>
  <tr>
  <td><label>Username <span>*</span></label></td>
 <td><form:input path="username"/></td>
 </tr>
 <tr>
  <td colspan="2"><div class="help">At least 6 character</div></td>
  </tr>
  <tr>
 <td> <label>Password <span>*</span></label></td>
 <td> <form:input path="password"/></td>
  </tr>
  <tr><td colspan="2"><div class="help">Use upper and lowercase lettes as well</div></td></tr>
  
   <tr> <td><label>Roll <span>*</span></label></td>
  <td>  <form:select path="role" items="${roleList}"></form:select></td>
    </tr>
 
<tr>
    <td colspan="2"> <input type="submit" value="Login1" class="formsubmit" /></td></tr>
     </table>
</form:form>
    


    </body>
</html>