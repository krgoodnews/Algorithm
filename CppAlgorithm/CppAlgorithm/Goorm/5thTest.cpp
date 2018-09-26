

#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>

/*
 2
 3 1 4 0 0 0 0 0
 0 0 3 4 0 0 0 0
 0 0 0 2 0 0 0 0
 0 0 0 3 1 1 1 4
 0 0 0 0 0 0 0 2
 0 0 0 0 0 0 0 2
 0 0 0 0 0 0 0 2
 0 0 0 0 0 0 0 3
 1 1 1 1 4 0 0 0
 0 0 0 0 2 0 0 0
 0 0 0 0 2 0 0 0
 0 0 0 0 2 0 0 0
 0 0 0 0 2 0 0 0
 0 0 0 0 2 0 0 0
 0 0 0 0 3 1 1 1
 0 0 0 0 0 0 0 0
 
 
 3
 1 4 1 1 1 2 0 0--
 3 3 1 1 1 4 1 0
 0 2 1 3 0 3 4 0
 0 0 0 0 1 0 2 0
 1 2 2 3 1 0 3 4
 1 0 1 2 3 1 4 2
 1 0 0 0 0 1 0 2
 4 1 2 2 2 1 0 2
 1 2 0 0 0 0 0 0--
 0 3 4 0 0 0 0 0
 0 0 3 4 0 0 0 0
 0 0 0 2 0 0 0 0
 0 0 0 2 0 0 0 0
 0 0 0 2 0 0 0 0
 0 0 0 2 0 0 0 0
 0 0 0 3 1 1 1 1
 4 0 0 0 0 0 0 0--
 3 1 1 1 1 1 4 0
 0 0 0 0 0 0 2 0
 0 0 0 0 0 0 2 0
 0 0 0 0 0 0 2 0
 0 0 0 0 0 0 3 4
 0 0 0 0 0 0 0 2
 0 0 0 0 0 0 0 0
 
 
 */
using namespace std;

int graph[10][10];

bool maze(int x, int y) {
	int current = graph[y][x];
	
	//	cout << y << " " << x << "|" << current << endl;
	if (x == 8 && y == 8) return true;
	else if (x > 8 || y > 8) return false;
	else {
		if (current == 0) return false;
		else if (current == 1 || current == 3) {
			int next = graph[y][x+1];
			if (next == 1 || next == 4) {
				return maze(x+1, y);
			}
			else return false;
		} else if (current == 2 || current == 4) {
			int next = graph[y+1][x];
			if (next == 2 || next == 3) return maze(x, y+1);
			else return false;
		}
	}
	
	return false;
}

int main() {
	
	vector<bool> answer;
	int N;
	cin >> N;
	
	for (int ni = 0; ni < N; ni++) {
		
		// 그래프 입력받기
		for (int yi = 1; yi <= 8; yi++)
			for (int xi = 1; xi <= 8; xi++)
				cin >> graph[yi][xi];
		
		
		bool ans = maze(1, 1);
		answer.push_back(ans);
		//		cout << "----" << endl;
	}
	
	
	for (int i = 0; i < answer.size(); i++) {
		string ansString = (answer[i] == true) ? "YES" : "NO";
		cout << ansString << endl;
	}
	
	
	
	
	return 0;
}

