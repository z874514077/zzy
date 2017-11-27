package lab3;

public class queryBridgeWords {
	 //查询桥接词
    public String queryBridgeWords(String word1, String word2){  //返回string situation
    	int p1 = getPosition(word1);
    	int p2 = getPosition(word2);
    	if(p1== -1 && p2 == -1)
    		return("situation1");
    	else if (p1== -1 && p2 != -1)
    		return("situation2");
    	else if (p1!= -1 && p2 == -1)
    		return("situation3");
    	else{
    		int first = getFirstNeighbor(p1);    //找到word1的第一个邻接点
    		int[] next = new int[vexs.length];   // next数组存放 word1的邻接点
    		int num = 1;    //next数组下标
    		next[0] =  first;   // 把第一个临界点放到数组
    		for(int i = 1;i<vexs.length;i++){  //数组从第二个开始
    			next[i] = 1000;
    			if(getNextNeighbor(p1,next[num-1])!= -1){  //如果存在 
    			     next[num] = getNextNeighbor(p1,next[num-1]); //word1 和 num-1的下一个邻接点
    		         num++;
    			}
    		}
    		int sum = -1;    // bridge数组下标
    		String[] bridge = new String[num];   //bridge存放所有满足条件的点
           	String ans = "";    //所有符合条件点的拼接字符串
           	
    		for(int i = 0;i<bridge.length;i++){
    			bridge[i] = "";  //初始化一下
   			    int nextfirst = getFirstNeighbor(next[i]);  //nextfirst 为next[i]的第一个邻接点
                int[] nextnext = new int[vexs.length];      // next[i]的邻接点数组nextnext
                nextnext[0] = nextfirst;  //nextfirst为第一个
                int nextnum = 1;   //nextnext数组下标
                for(int j = 1;j<vexs.length;j++){  //数组从第二个开始
                	nextnext[j]= 1000;
                	if(getNextNeighbor(next[j],nextnext[nextnum-1])!= -1){  //如果存在
       			     nextnext[nextnum] = getNextNeighbor(next[j],nextnext[nextnum-1]); //下一个邻接点
       			     nextnum++;}
                }
                
                for(int k = 0;k<nextnext.length;k++){
                	if (nextnext[k] == p2){
                		sum++;//个数加一
                		bridge[sum] = vexs[next[i]];     //中间点加入bridge
                    }	
    		    }  
            }  
    		
            if (sum == -1)   //如果个数为0
                return("situation4");
            else{
                for(int x = 0;x<bridge.length;x++){
                	if(bridge[x].equals("")==false){
                		ans = ans + bridge[x];
                		ans = ans + " ";}
                	}
                return ans;
    	    }
            
    	}
    }
}
