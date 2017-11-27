package lab3;

public class generateNewText {
	//根据bridge word生成新文本
    public String generateNewText(String inputText){
    	inputText = inputText.replaceAll("[\\p{Punct}\\p{Space}]+", " ");
    	inputText = inputText.toLowerCase();
    	String[] textArray = inputText.split(" ");//输入文本分割	
    	String newText = "";
    	for(int i = 0;i<textArray.length-1;i++){
    		if(queryBridgeWords(textArray[i],textArray[i+1]).equals("situation1")){
    			newText = newText +textArray[i]+" ";}	
    		else if(queryBridgeWords(textArray[i],textArray[i+1]).equals("situation2")){
    			newText = newText +textArray[i]+" ";}
    		else if(queryBridgeWords(textArray[i],textArray[i+1]).equals("situation3")){
    			newText = newText +textArray[i]+" ";}
    		else if(queryBridgeWords(textArray[i],textArray[i+1]).equals("situation4")){
    			newText = newText +textArray[i]+" ";}
    		else{
    			String[] bridgeArray = queryBridgeWords(textArray[i],textArray[i+1]).split(" ");
    			newText = newText +textArray[i]+" "+bridgeArray[0]+" ";
    		}
    	}
    	newText = newText+textArray[textArray.length-1];
    	
    	return newText;
    }
}
