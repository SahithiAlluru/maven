<%-- 
    Document   : updategas
    Created on : Nov 12, 2016, 10:11:23 AM
    Author     : Swathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@include file="upperlogoresidential.jsp" %>
<!DOCTYPE html>
<html>
    <head>
          <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/favicon.ico">

    <title>..:: HRMS ::..</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/SkyHRMS.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
    <link href="css/newcss.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>
   
  
	<script src="js/login.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
        <sj:head/>
        <s:head/>
    </head>
    <body>
         <style type="text/css">
            label[for="i"] {
            color: black;
            font-size: 11pt;
            padding-bottom: 10px;}    
        </style>
         <div class="container">
  <h2 class="text-center text-primary">Residential Quarters</h2>
    <div class="clear">&#x00A0;</div>
        <div class="clear">&#x00A0;</div>
        <center>
           <s:form action="quarterUpdate"  enctype="multipart/form-data" method="post" >          
        
         <table>
               <s:iterator value="qlist">
             <tr>
                 <td><s:textfield id="i" name="rf.quarterId" label="Quarter Id" value="%{quarterId}" size="90" cssClass="form-control form-group"></s:textfield></td>
             
                     <td><s:select id="i" name="rf.quarterType" list="quarterList" value="%{quarterType}" headerKey="-1" headerValue=" --Select-- " label="Quarter Type" cssClass="form-control form-group "></s:select> </td>
             
                     <td><s:textfield id="i" name="rf.quarterCode" label="Quarter Code" value="%{quarterCode}" cssClass="form-control form-group"></s:textfield></td>
            
             
             </tr>
               </s:iterator>
         </table>
               <br/><br/>
          <div class="form-group">
      <div class="col-sm-6 text-center">
      <s:submit  value="Update"  cssClass="btn btn-default" align="center" ></s:submit>
      </div>
       <div class="col-sm-6 text-center"> 
          <button type="button" class="btn btn-default" ><a href="quarterDisplay" style="text-decoration:none; color:black">Cancel</a></button>
          </div>
      
    </s:form>
            </center>
         </div>
    </body>
</html>
