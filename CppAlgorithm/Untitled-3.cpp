
#include <iostream>
#include <vector>
#include <queue>

using namespace std;

const int MAX = 100;
int graph[MAX][MAX];

vector<vector<int>> aList(MAX);


/*
7
0 0 0 1 0 0 0
0 0 0 0 0 0 1
0 0 0 0 0 0 0
0 0 0 0 1 1 0
1 0 0 0 0 0 0
0 0 0 0 0 0 1
0 0 1 0 0 0 0
 */
void bfs(int n) {
	queue<int> q;
	q.push(n);
	
	while (!q.empty()) {
		int temp = q.front(); q.pop();
		// for_each(int i in aList[temp]) {
			
		// }
	}
}

int main() {
	

	int N;
	cin >> N;
	
	// 공간 만들기
	for (int yi = 0; yi < N ; yi++) {
		for (int xi = 0; xi < N; xi++) {
			
			cin >> graph[yi][xi];
		}
	}
	
	// 간선 리스트 작성하기
	for (int yi = 0; yi < N ; yi++) {
		for (int xi = 0; xi < N; xi++) {
			if (graph[yi][xi] == 1) aList[yi].push_back(xi);
		}
	}
	
	for (int i = 0; i < N; i++) {
		bfs(i);
	}
	
	
	
	return 0;
}

