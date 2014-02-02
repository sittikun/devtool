<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dev Tool</title>
        <script src="js/jquery-2.0.2.min.js" /></script>
        <script type="text/javascript">
              //Math.random();
              var mycat = new Array();
              mycat[0] = 100;
              mycat[1] = 10;
              mycat[2] = 40;
              mycat[3] = 180;
              mycat[4] = 190;
              mycat[5] = 160;
              mycat[6] = 10;
              mycat[7] = 60;
              mycat[8] = 160;
              mycat[9] = 180;

              setInterval(function(){

              for(var i=0;i<10;i++){
              mycat[i] = Math.random()*200;
                  //if(mycat[i] > 180){
                  //    mycat[i] = 0;
                 // }
              }

              var str = mycat[0]+","+mycat[1]+" "+mycat[2]+","+mycat[3]+
              " "+mycat[4]+","+mycat[5]+" "+mycat[6]+","+mycat[7]+" "+mycat[8]+","+mycat[9];
                          $("#cat").attr("points",str)
                          }
                          ,100);
          </script>
    </head>
    <body>
        <div id="wrapper" style="margin: 0 auto;width: 1000px;">
        <div id="content" style="">
            <header style="background-color: lightblue;border-radius: 5px">
                ---- Dev Tool ---
            </header>
            <nav>
              <a href="#">Main</a> |
              <g:link controller="sqlAndModel" action="sqltomodel">SQL -> Model</g:link> |
            </nav>
            <svg width="300" height="200">

            <polygon id="cat" points="100,10 40,180 190,60 10,60 160,180" style="fill:lime;stroke:purple;stroke-width:5;fill-rule:evenodd;" />

            <!-- Right Pad -->
            <div  style="display: block;position: fixed;bottom: 50px;right: 0px;width: 50px;height: 100px ;background-color: gray ;border-bottom-left-radius: 5px ;border-top-left-radius: 5px">
                <div style="position: relative">    
                    gdf
                </div>
            </div>
         </div>
    </div>
    </body>
</html>
