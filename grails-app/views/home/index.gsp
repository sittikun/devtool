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
        <script src="js/skrollr.min.js" /></script>
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
    <div id="skrollr-body" style="margin: 0 auto;width: 1000px;">
		<svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="900px" height="800px">
			<path
				style="fill:none;stroke:#333333;stroke-width:7;stroke-linecap:round;stroke-linejoin:miter;stroke-miterlimit:4;stroke-opacity:1;stroke-dasharray:6000;stroke-dashoffset:0"
				data-0="stroke-dashoffset:6000;" data-end="stroke-dashoffset:0;"

    d="M 74.763213,22.821111 C 83.419553,24.529351 866.46084,39.189291 567.76197,148.80048 537.18326,160.02171 187.31591,551.25016 225.21223,235.55563 241.13589,102.90386 0.25250997,345.18709 40.660835,347.83178 c 80.816655,5.28939 516.175635,23.60545 572.827615,21.62267 56.65199,-1.98277 91.18083,-9.11209 83.50492,-24.40886 -51.66219,-102.95391 -409.50472,-59.61776 -453.54251,1.93693 -15.07275,21.06826 -14.67682,353.22134 -126.26428,212.84507 -57.188577,-71.94287 117.69342,-4.78105 120.2036,-7.41252 18.90502,-19.81864 69.69788,-77.79753 69.69788,-49.76975 0,26.14129 -72.07863,34.22629 -16.16183,63.53585 37.62127,19.7197 80.44137,-55.5459 33.33376,-72.00729 -20.92719,-7.31285 -19.87467,23.74008 14.1416,14.82502 4.3452,-1.13879 52.52595,-18.66984 52.52595,-13.76608 0,19.02803 -34.19827,24.42672 -35.35401,43.41615 -1.59599,26.22326 53.3312,47.05687 52.52596,10.58931 -1.10226,-49.91884 -39.57011,-91.25218 13.13147,-36.00365 16.51357,17.31164 34.61696,59.20469 67.67766,47.65188 57.57931,-20.12067 81.65052,-338.8578 91.92039,-338.8578 39.18525,0 -31.94232,75.96231 -38.38434,116.48236 -17.28088,108.69614 15.55667,155.62967 102.02154,184.25394"
   			/>
		</svg>
		<p>!JOAT!</p>
                <p>!JOAT!</p>
                <p>!JOAT!</p>
                <p>!JOAT!</p>
                <p>!JOAT!</p>
                <p>!JOAT!</p>
                <p>!JOAT!</p>
                <p>!JOAT!</p>
	</div>

	
	<script type="text/javascript">
	skrollr.init({
		forceHeight: false
	});
	</script>

    </body>
	
</html>
