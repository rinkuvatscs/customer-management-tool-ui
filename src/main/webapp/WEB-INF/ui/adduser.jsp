<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
 
 </style>
<title>Insert title here</title>
</head>
<body>
<div class="row">
<div class="col-xs-3">
<div class="form-group row">
  
  <div class="col-xs-5">
   
    <input type="submit" value="ADD" class="ff" />
    <input type="submit" value="GET" class="ff" />
    <input type="submit" value="EDIT" class="ff" />
    <input type="submit" value="BACK" class="ff" />
    <input type="submit" value="CLEAR" class="ff" />
  </div>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-xs-1 col-form-label">Search</label>
  <div class="col-xs-3">
    <input class="form-control" type="text" value="How do I shoot web" id="example-search-input">
  </div>
  
</div>
</div>

<div class="col-xs-3">
<div class="form-group row">
  <label  class="col-xs-1 col-form-label">Text</label>
  <div class="col-xs-3">
    <input class="form-control" type="text" value="Artisanal kale" id="example-text-input">
  </div>
  <table border="1">
  <tr><td>hhhh</td></tr>
  </table>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-xs-1 col-form-label">Search</label>
  <div class="col-xs-3">
    <input class="form-control" type="text" value="How do I shoot web" id="example-search-input">
  </div>
</div>
</div>

<div align="center" class="col-xs-6" style="background-color: yellow;">
<div class="form-group row" style="background-color: red" align="center">
  <span  class="col-xs-6 col-form-label"  style="background-color: green;" >Text</span>
  <div class="col-xs-6" align="center">
    <input class="form-control" type="text" value="Artisanal kale" id="example-text-input">
  </div>
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-xs-1 col-form-label">Search</label>
  <div class="col-xs-3">
    <input class="form-control" type="text" value="How do I shoot web" id="example-search-input">
  </div>
</div>
</div>

</div>
</body>
</html>