package devtool

class SqlAndModelController {

    def index() { }
    
    def sqltomodel(){
        
    }
    
    def doProcess(){
        String dataIn = params['sqlText'];
       /* String[] dataArr = dataIn.split("\n");
        StringBuilder sb = new StringBuilder();
       
        for(String tmpStr:dataArr){
			boolean upch = false;
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
            
        }*/
                
        //dataIn = dataIn.toLdataIn.replaceAll("(_[a-z])","\$1");ower();
		StringBuilder sb = new StringBuilder();
		doThimInnerSpace( doTrim( dataIn)).eachLine {
			sb.append(DBNameToJavaName(it)+"\n")
		}
        render doFieldToJavaType(sb.toString())
    }
	
	def doTrimAction(){
		String dataIn = params['sqlText'];
		render doTrim(dataIn)
	}
	def doThimInnerSpaceAction(){
		String dataIn = params['sqlText'];
		render doThimInnerSpace(dataIn)
	}
	def doFieldToJavaTypeAction(){
		String dataIn = params['sqlText'];
		StringBuilder sb = new StringBuilder();
		dataIn.eachLine {
			sb.append(DBNameToJavaName(it)+"\n")
		}
		render doFieldToJavaType(sb.toString())
		//render sb.toString()
	}
	def doDBGetterAction(){
		String dataIn = params['sqlText'];
		render doDBGetter(dataIn)
	}
	def doDBSetterAction(){
		String dataIn = params['sqlText'];
		render doDBSetter(dataIn)
	}
	
	def doPrivateVarAction(){
		String dataIn = params['sqlText'];
		render doPrivateVar(dataIn)
	}
	//------------------------------------FUNCTION------------------------------------
    
    def doTrim(String dataIn){
        String dataout="";
        dataIn.eachLine{
            dataout += it.trim()+"\n"
        }
        dataout
    }
	
	def doThimInnerSpace(String dataIn){
		String dataout=dataIn.replaceAll("[ \t]+", " ");
		dataout
	}
	

    
    def doFieldToJavaType(String dataIn){
        String dataout="";
        dataIn.eachLine{
            dataout += it.replaceAll("^(?i)(varchar2|varchar)","String")
            .replaceAll("^(?i)date","Date").replaceAll("^(?i)number","long")+"\n"
        }
        
        dataout
    }
	
	def doPrivateVar(String dataIn){
		StringBuilder dataout=new StringBuilder();
		dataIn.eachLine{
			dataout.append("private "+it+";\n");
		}
		dataout.toString()
	}
    
    def doDBGetter(String dataIn){
        String dataout="";
        dataIn.eachLine{
            String[] tmp = it.split(" ");
            String type = tmp[0]; //EX String
            String name = tmp[1]; //EX empId
            String dbName = javaNameToDBName(name) //EMP_ID
            String bigName = name.substring(0, 1).toUpperCase() + name.substring(1); //EX EmpId
            dataout += "tmpInstance.set"+bigName+"(rs.get"+type+"(\""+dbName+"\"));\n"
        }
        dataout
    }
	
	def doDBSetter(String dataIn){
		String dataout="";
		dataIn.eachLine{
			String[] tmp = it.split(" ");
			String type = tmp[0]; //EX String
			String name = tmp[1]; //EX empId
			String dbName = javaNameToDBName(name) //EMP_ID
			String bigName = name.substring(0, 1).toUpperCase() + name.substring(1); //EX EmpId
			dataout += "cs.set"+type+"(parameterIndex++, "+name+");\n"
			//cs.setString(parameterIndex++, hrpId);
		}
		dataout
	}
    
    def javaNameToDBName(String dataIn){
        StringBuilder sb = new StringBuilder();
        char[] charList = dataIn.toCharArray()
        for(int i = charList.length-1 ; i>=0 ;i--){
            if(charList[i]>='A' && charList[i]<='Z'){
                sb.append(charList[i]).append("_");
            }else if(charList[i]>='a' && charList[i]<='z'){
                sb.append(String.valueOf((char)((int)charList[i]-32)))
            }else{
                sb.append(charList[i]);
            }
        }
        sb.reverse();
    }
	
	def DBNameToJavaName(String dataIn){
		StringBuilder sb = new StringBuilder();
		boolean upch = false;
		dataIn = dataIn.toLowerCase();
		
		for(char c:dataIn.toCharArray()){
			if(c == '_'){
				upch = true;
			}else if(upch == true){
				sb.append(String.valueOf((char)((int)c-32)));
				upch = false;
			}else{
				sb.append(String.valueOf(c));
			}
		}
		
		sb.toString()
	}
}
