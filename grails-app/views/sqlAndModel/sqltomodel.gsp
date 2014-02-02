<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sql to model</title>
        <script src="../js/jquery-2.0.2.min.js" /></script>
    </head>
    <body style="color: white;background-image: url('../images/sqltomodalbg.jpg');background-size: 100%;">
        
        <div id="wrapper" style="margin: 0 auto;width: 1000px;">
        <div id="content" style="">
                            <h1>Sql to model</h1>
                            <!--<g:form name="myForm" >
                                <g:textArea name="sqlText" value="" />
                                >?
                                <div id="resultdiv"/>
                                <g:remoteLink controller="sqlAndModel" action="doProcess" update="resultdiv">myLink</g:remoteLink>
                            </g:form>-->


                            <g:formRemote name="myForm" url="[controller:'sqlAndModel',action:'doProcess']" update="resultdiv">
                                <g:textArea name="sqlText" style="width:90%;height:300px;margin: 10px auto;display: block;" value="" /><br/>
                                <g:submitButton name="submit" style="width:100%;margin: 10px auto;" value="Do Convert"/>
                            </g:formRemote>
                                <textarea id="resultdiv" style="background-color: #FFF3F3;width:90%;height:300px;margin: 10px auto;display: block;">
                                </textarea>
         </div><!-- END content -->
         </div><!-- END warpper -->
    </body>
</html>
