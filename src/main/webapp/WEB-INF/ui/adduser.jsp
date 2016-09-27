<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
} </style>
<title>Insert title here</title>
</head>
<body>
<div class="row" style="margin-left: 10px;margin-right: 10px;">
 <fieldset class="scheduler-border">
<legend class="scheduler-border">User Details</legend>

<div class="col-xs-3">
<div class="form-group row">
  
  <div class="col-xs-12">
  <fieldset class="scheduler-border" >
<legend class="scheduler-border">General Information</legend>

<table>
<tr><td align="center"><input type="submit" value="ADD" class="ff" /></td></tr>
<tr><td><input type="submit" value="ADD" class="ff" /></td></tr>
</table>   
</fieldset>
  </div>
  
</div>
</div>

<div class="col-xs-3">
<fieldset class="scheduler-border">
<legend class="scheduler-border"></legend>
<div class="form-group row">
  <label  class="col-xs-3 col-form-label">Name</label>
  <div class="col-xs-9">
    <input class="form-control" type="text" value="Artisanal kale" />
  </div>
  
</div>
<div class="form-group row">
  <label  class="col-xs-3 col-form-label">UserName</label>
  <div class="col-xs-9">
    <input class="form-control" type="text" value="How do I shoot web"/>
    
  </div>
</div>

<div class="form-group row">
  <label  class="col-xs-3 col-form-label">UserEmail</label>
  <div class="col-xs-9">
    <input class="form-control" type="text" value="How do I shoot web"/>
  </div>
</div>

<div class="form-group row">
  <label  class="col-xs-3 col-form-label">User Mobile</label>
  <div class="col-xs-9">
    <input class="form-control" type="text" value="How do I shoot web"/>
  </div>
</div>

<div class="form-group row">
  <label  class="col-xs-3 col-form-label">Password</label>
  <div class="col-xs-9">
    <input class="form-control" type="text" value="How do I shoot web"/>
  </div>
</div>


<div class="form-group row">
  <label  class="col-xs-3 col-form-label">Confirm Password</label>
  <div class="col-xs-9">
    <input class="form-control" type="text" value="How do I shoot web" />
  </div>
</div>


<div class="form-group row">
  <label  class="col-xs-3 col-form-label">Role</label>
  <div class="col-xs-9">
    <input class="form-control" type="text" value="How do I shoot web"/>
  </div>
</div>

<div class="form-group row">
  <label  class="col-xs-3 col-form-label">Status</label>
  <div class="col-xs-9">
    <input class="form-control" type="text" value="How do I shoot web" />
  </div>
</div>

</fieldset>
</div>

<div align="center" class="col-xs-6" style="background-color: yellow;">
<div class="form-group row" style="background-color: red" align="center">
  <span  class="col-xs-6 col-form-label"  style="background-color: green;" >Text</span>
  <div class="col-xs-6" align="center">
    <input class="form-control" type="text" value="Artisanal kale" />
  </div>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-xs-1 col-form-label">Search</label>
  <div class="col-xs-3">
    <input class="form-control" type="text" value="How do I shoot web"/>
  </div>
</div>
</div>
</fieldset>
</div>
</body>
</html>