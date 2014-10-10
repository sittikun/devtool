<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="layout" content="devtoollayout">
        <title>Sql to model</title>
        <script src="../js/jquery-2.0.2.min.js" /></script>
    </head>
    <body style="color: white;background-image: url('../images/sqltomodalbg.jpg');background-size: 100%;">
        
        <div id="wrapper" style="margin: 0 auto;width: 1000px;">
        <div id="content" style="margin: 0 auto;">
                            <h1>Sql to model</h1>
                            <!--<g:form name="myForm" >
                                <g:textArea name="sqlText" value="" />
                                >?
                                <div id="resultdiv"/>
                                <g:remoteLink controller="sqlAndModel" action="doProcess" update="resultdiv">myLink</g:remoteLink>
                            </g:form>--><%--


                          <!--  <g:formRemote name="myForm" url="[controller:'sqlAndModel',action:'doProcess']" update="resultdiv"> -->
                          
                                --%>
                                <div style="background-color: white;color: black;">
	                                <h2>
		                                SELECT data_type,column_name<br/>
										FROM all_tab_columns<br/>
										WHERE TABLE_NAME='USER_TABLE'
	                                </h2>
                                </div>
                                
                                
                                <g:form name="myForm"  style="margin: 0 auto">
                                <g:textArea name="sqlText" style="width:90%;height:300px;margin: 10px auto;display: block;" value="" /><br/>

								<button style="visibility: hidden;"></button><br/>
								
								<button onclick="$('#sqlText').val($('#resultdiv').val());return false;">^^^ Copy DATA UP ^^^</button><br/>
                           		<g:submitToRemote url="[controller:'sqlAndModel',action:'doProcess']" update="resultdiv" value="Do Convert (3 STEP))"></g:submitToRemote> |
                           		<g:submitToRemote url="[controller:'sqlAndModel',action:'doTrimAction']" update="resultdiv" value="Trim"></g:submitToRemote>
                            	<g:submitToRemote url="[controller:'sqlAndModel',action:'doThimInnerSpaceAction']" update="resultdiv" value="TrimIner"></g:submitToRemote>
                            	<g:submitToRemote url="[controller:'sqlAndModel',action:'doFieldToJavaTypeAction']" update="resultdiv" value="DB -&gt; JAVA"></g:submitToRemote><BR/> 
                            	<g:submitToRemote url="[controller:'sqlAndModel',action:'doPrivateVarAction']" update="resultdiv" value="PrivateVar"></g:submitToRemote>
                            	<g:submitToRemote url="[controller:'sqlAndModel',action:'doDBGetterAction']" update="resultdiv" value="GETTER"></g:submitToRemote>
                            	<g:submitToRemote url="[controller:'sqlAndModel',action:'doDBSetterAction']" update="resultdiv" value="SETTER"></g:submitToRemote>
                            	
                            	
                                <textarea id="resultdiv" style="background-color: #FFF3F3;width:90%;height:300px;margin: 10px auto;display: block;">
                                </textarea>
                                </g:form>
                               
                            <%--</g:formRemote>
                            
         --%></div><!-- END content -->
         </div><!-- END warpper -->
    </body>
</html>
