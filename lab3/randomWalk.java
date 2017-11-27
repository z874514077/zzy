package lab3;

import java.util.Random;
import java.util.Scanner;

public class randomWalk {
	 public String randomWalk(){    //无出度或第二次拜访时停止
	    	System.out.println("请输入随机游走的起点：");
	    	Scanner sc1 = new Scanner(System.in);
	    	String start = sc1.nextLine();
	    	String randomText = "";
	    	String[] randomArray = new String[numOfEdges]; // 路径点的数组
	    	for(int i = 0;i<numOfEdges;i++){   //初始化
	    		randomArray[i] = "";
	    	}
	    	randomText =randomText + start + " ";   //把起点放到randomtext开头
	    	int sp = getPosition(start);            //获取起点位置
	    	int randomflag = sp;                    //循环因子
	    	int arraynum = 0;                       // randomArray数组的下标'
	    	sc1.close();
	    	if (sp == -1)                           //第一种情况，起点不存在
	    		return "condition";
	    	
	    	for(int i = 0;i<numOfEdges;i++){
	    		int[] neighbor = allNeighbor(randomflag);   //获取因子的所有下一个临界点
	    		int num1000 = 0;
	    		for(int j = 0;j<vexs.length;j++){
	    			if(neighbor[j]==1000){
	    				num1000++;}
	    		}
	    		int rf = randomflag;
	            if(neighbor[0]==-1){                        // 第二种情况如果第一个临界点为-1，即没有下一个临界点
	            	break;}                    // 停止
	            else{
	            	Random random = new Random();
	    		    int s = Math.abs(random.nextInt()%(neighbor.length-num1000));  //获得随机数
	    		    randomflag = neighbor[s];//获得下一个因子
	  		        int[] pos = new int[numOfEdges];// 存放randomflag在randomArray数组中位置的数组position
	  		        int posnum = 0;
			        for(int j = 0;j<numOfEdges;j++){
			        	if(randomArray[j].equals(vexs[randomflag])){
			        		pos[posnum] = j;
			        		posnum++;
			        	}
			        }
			        for(int k = 0;k<numOfEdges;k++){
			        	if(pos[k]!=0 && vexs[rf].equals(randomArray[pos[k]-1])){//如果这个因子的前一个节点为上一个因子
			        		randomText =randomText +vexs[neighbor[s]] + " ";  //加入字符串
			        		return randomText;                           //情况三 重复
			        	}
			        }
	    		    randomArray[arraynum] = vexs[neighbor[s]];        //加入数组
	    		    arraynum++;
	    		    randomText =randomText +vexs[neighbor[s]] + " ";  //加入字符串
	    		    } 
	            }
	    	return randomText;
	    }
}
