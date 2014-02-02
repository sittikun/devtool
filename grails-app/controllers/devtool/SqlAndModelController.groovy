package devtool

class SqlAndModelController {

    def index() { }
    
    def sqltomodel(){
        
    }
    
    def doProcess(){
        String dataIn = params['sqlText'];
        String[] dataArr = dataIn.split("\n");
        StringBuilder sb = new StringBuilder();
        boolean upch = false;
        for(String tmpStr:dataArr){
            tmpStr = tmpStr.toLowerCase();
            for(char c:tmpStr.toCharArray()){
                if(c == '_'){
                    upch = true;
                }else if(upch == true){
                    sb.append(String.valueOf((char)((int)c-32)));
                    upch = false;
                }else{
                    sb.append(String.valueOf(c));
                }
            }
            
        }
                
        //dataIn = dataIn.toLdataIn.replaceAll("(_[a-z])","\$1");ower();

        
        render sb.toString();
    }
}
