<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="code.jquery.com/jquery-1.12.3.js"></script>
    
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.1.0/js/responsive.bootstrap.min.js"></script>




 <style type="text/css">
 .form-group
 {
 margin-left: 2px;
 }
 
 .formsubmit{
  position: relative;
  margin-top: 5px;
  margin-bottom: 5px;
  left: 50%;
  transform: translate(-50%, 0);
  font-family: inherit;
  color: white;
  background: #9932CC;
  outline: none;
  border: none;
  padding: 5px 15px;
  font-size: 1.3em;
  font-weight: 400;
  border-radius: 3px;
  box-shadow: 0px 0px 10px rgba(51, 51, 51, 0.4);
  cursor: pointer;
  transition: all 0.15s ease-in-out;
}


.ff
{
color: white;
  background: #9932CC;
 padding: 5px 15px;
  font-size: 1em;

  
}
fieldset.scheduler-border {
    border: solid 1px #DDD !important;
    padding: 0 10px 10px 10px;
    border-bottom: none;
    margin-left: 10px;
}

legend.scheduler-border {
    width: auto !important;
    border: none;
    font-size: 14px;
} 

.boxborder
{
 border: solid 1px #DDD !important;
   
    border-bottom: none;
    

}

.panel-body {
    padding: 0;
    margin: 0;
    
}

.panel-default {
    padding: 0;
    margin-left: 10px;
    margin-right: 10px;
    margin-bottom: 0;
    margin-top: 0;
}

</style>

<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable({
    	
    	"filter":   false
    
        
    	
    });
} );
</script>
<title>Customer Management Tool</title>
</head>
<body style="background-color: #f7f7f7">
<div class="container-fluid" style="background-color: #f7f7f7">
<fieldset class="scheduler-border">
<legend class="scheduler-border">User Details</legend>
   <div class="row">
     <form:form action="back" modelAttribute="command" style="display:inline;">  
    <%-- <div class="col-sm-2 panel panel-default" style="background-color: #f7f7f7">
    <div class="panel-body" style="margin-top: 5px;">
  <div class="form-group row" align="center"> 
  <button name="ddd" value="sumb">ADD</button>  
</div>
<div class="form-group row" align="center"> 
  <button name="ddd" value="sumb">GET</button>  
</div>
<div class="form-group row" align="center"> 
  <button name="ddd" value="sumb">EDIT</button>  
</div>
<div class="form-group row" align="center"> 
  <form:form action="back" modelAttribute="command">   
    <input type="submit" value="BACK" style="color:#000"/>
    </form:form>
</div>
<div class="form-group row" align="center"> 
  <button name="ddd" value="sumb">CLEAR</button>  
</div>
</div>
  </div> --%>
 
    <div class="col-sm-6 panel panel-default" style="background-color: #f7f7f7">
   
      <div class="panel-body" style="margin-top: 5px;padding-right: 5px;">
    <div class="form-group row">     
  <label  class="col-xs-4 col-form-label">Name</label>
  <div class="col-xs-8">
    <form:input class="form-control"  path="username" placeholder="Name Field" />
  </div>  
</div>
<div class="form-group row">     
  <label  class="col-xs-4 col-form-label">UserName</label>
  <div class="col-xs-8">
    <input class="form-control" type="text" value="" placeholder="Username Field" />
  </div>  
</div>
<div class="form-group row">     
  <label  class="col-xs-4 col-form-label">UserEmail</label>
  <div class="col-xs-8">
    <input class="form-control" type="text" value="Email Field" />
  </div>  
</div>
<div class="form-group row">     
  <label  class="col-xs-4 col-form-label">UserMbile</label>
  <div class="col-xs-8">
    <input class="form-control" type="text" value="Mobile Field" />
  </div>  
</div>
<div class="form-group row">     
  <label  class="col-xs-4 col-form-label">Password</label>
  <div class="col-xs-8">
    <input class="form-control" type="text" value="Password Field" />
  </div>  
</div>
<div class="form-group row">     
  <label  class="col-xs-4 col-form-label">ConfirmPassword</label>
  <div class="col-xs-8">
    <input class="form-control" type="text" value="ConfirmPassword Field" />
  </div>  
</div>
<div class="form-group row">     
  <label  class="col-xs-4 col-form-label">Role</label>
  <div class="col-xs-8">
  <select class="selectpicker form-control">
  <option>Select</option>
  <option>User</option>
  <option>Admin</option>
</select>
  <!--   <input class="form-control" type="text" value="Name Field" />
 -->  </div>  
</div>
<div class="form-group row">     
  <label  class="col-xs-4 col-form-label">Status</label>
  <div class="col-xs-8">
 <select class="selectpicker form-control">
  <option>ACTIVATE</option>
  <option>DEACTIVATE</option>
  <option>DELETE</option>
</select>
  </div>  
</div>

</div>
 <!-- <div class="col-sm-12 panel panel-default" style="background-color: #f7f7f7"> -->
   <!--  <div class="panel-body" style="margin-top: 5px;"> -->
  <div class="form-group row" align="left"> 
     
  <button name="ddd" value="sumb">ADD</button>    
  <button name="ddd" value="sumb">GET</button>      
  <button name="ddd" value="sumb">EDIT</button>       
  <input type="submit" value="BACK" style="color:#000"/>      
  <button name="ddd" value="sumb">CLEAR</button>
    
</div>


<!-- </div> -->
<!--   </div> -->
    </div>

    <div class="col-sm-5  panel panel-default" style="background-color: #f7f7f7">
    
    <div class="panel-body col-xs-12">
        <div class="table-responsive">
    
  <table  id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0"  style="margin: 0;">
    
     <%--  <tr>
        <td><form:input path="username" placeholder="Name Field" /></td>
        <td>Lastname</td>
        <td>Email</td>
      </tr>
    
   
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr> --%>
      <thead>
            <tr>
                <th>User name</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Status</th>
            
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Tiger</td>
                <td>Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
           
            </tr>
            <tr>
                <td>Garrett</td>
                <td>Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
              
            </tr>
            <tr>
                <td>Ashton</td>
                <td>Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
              
            </tr>
           
           
        </tbody>
   
  </table>
  </div>
</div>

</div>

      </form:form> 
  </div>
</fieldset>
 
</div>
  
  

</body>
</html>