package lab3;

public class showDirectedGraph {
    public void showDirectedGraph(int n) {
        System.out.printf("生成的有向图表示：\n");
        for (int i = 0; i < n; i++) {
        	for (int j = 0; j < n; j++) {
            System.out.print(edges[i][j]);
            System.out.print(" ");
            }
            System.out.printf("\n");
        }
    }
}
