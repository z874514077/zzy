package lab3;

public class calcShortestPath {
	//计算最短路径=====================================================================================
    public String printPath(int[][] path,int from, int to) {
    	  String shortText = "";
          while(path[from][to]!=from && path[from][to]!=-1){
        	   shortText = shortText + vexs[path[from][to]]+" ";
               to = path[from][to];
           }  
          return shortText;
     }     
     //path -- 路径。path[i][j]=k表示，"顶点i"到"顶点j"的最短路径会经过顶点k。
     //dist -- 长度数组。即，dist[i][j]=sum表示，"顶点i"到"顶点j"的最短路径的长度是sum。
    
    public String calcShortestPath(String word1, String word2) {
        int[][] path = new int[numOfVexs][numOfVexs];
        int[][] dist = new int[numOfVexs][numOfVexs];
        int p1 = getPosition(word1);// word1位置
        int p2 = getPosition(word2);//word2位置
        // 初始化
        for (int i = 0; i < numOfVexs; i++) {
            for (int j = 0; j < numOfVexs; j++) {
                dist[i][j] = edges[i][j];    // "顶点i"到"顶点j"的路径长度为"i到j的权值"。
                path[i][j] = -1;                // "顶点i"到"顶点j"的最短路径是经过顶点j。
            }
        }
     // 计算最短路径
        for (int k = 0; k < numOfVexs; k++) {
            for (int i = 0; i <numOfVexs; i++) {
                for (int j = 0; j < numOfVexs; j++) {
                    // 如果经过下标为k顶点路径比原两点间路径更短，则更新dist[i][j]和path[i][j]
                    int tmp = (dist[i][k]==INF || dist[k][j]==INF) ? INF : (dist[i][k] + dist[k][j]);
                    if (dist[i][j] > tmp) {
                        // "i到j最短路径"对应的值设，为更小的一个(即经过k)
                        dist[i][j] = tmp;
                        // "i到j最短路径"对应的路径，经过k
                        path[i][j] = k;
                    }
                }
            }
        }
        String shortText = printPath(path,p1,p2);
        return shortText+dist[p1][p2];
    }
}
