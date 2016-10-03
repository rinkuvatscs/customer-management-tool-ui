<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>  
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
   
   
   
           <title>Customer Management Tool</title>
         <link href="../../css/loginstyle.css" rel="stylesheet" type="text/css" /> 
<style type="text/css">
 
 .formsubmit{
  position: relative;
 
  transform: translate(-50%, 0);
  font-family: inherit;
  color: white;
  background: #9932CC;
  outline: none;
  border: none;
  margin-top:10px;
  padding-top:20px;
  padding-bottom:20px;
  font-size: 1.3em;
  font-weight: 400;
  text-align:center;
  border-radius: 3px;
  box-shadow: 0px 0px 10px rgba(51, 51, 51, 0.4);
  cursor: pointer;
  transition: all 0.15s ease-in-out;
}
 
 </style>    </head>
<body>

<div class="container">
    <div class="row">
   
        <div class="col-sm-6 col-md-4 col-md-offset-4">
          
            <div style="background-color: #f7f7f7">
               <!--  <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                    alt=""> -->
                  <div class="formsubmit">Customer Management Tool</div>
                 <form:form action="menu" modelAttribute="command">   
                <div class="form-signin">
                <form:input path="username" class="form-control" placeholder="Username" required="true"/>
                <%-- <form:input  path="username" class="form-control" placeholder="Username"/> --%>
                <form:input class="form-control" placeholder="Password" path="password" required="true"/>
                <form:select class="form-control" style="margin-bottom: 10px;" path="role" items="${roleList}">
                
                </form:select>
                <input type="submit" style="background-color:#9932CC ; color:#FFF" class="form-control"/> 
                 
              
               <!--  <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label> -->
               <!--  <a href="#" class="pull-right need-help">Need help? </a><span class="clearfix"></span> -->
                </div>
                </form:form>
            </div>
            <!-- <a href="#" class="text-center new-account">Create an account </a> -->
        </div>
    </div>
</div>
    </body>
</html>