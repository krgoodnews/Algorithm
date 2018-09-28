// 카잉 달력
// https://is.gd/38BLnl

#include <iostream>
#include <vector>

using namespace std;


int findCal(int m, int n, int x, int y) {
	
	if (x == y) return x;
	
	int maxNum = max(m, n);
	for (int i = 0; i <= maxNum; i++) {
		int c = x + (m * i);
		
		if ((((c-1) % n) + 1) == y) {
			return c;
		}
	}
	
	return -1;
}

int main() {
	
	int N;
	cin >> N;
	
	vector<int> answers;
	for (int ni = 0; ni < N; ni++) {
		int m, n, x, y;
		cin >> m >> n >> x >> y;
		
		int answer = findCal(m, n, x, y);
		answers.push_back(answer);
	}
	
	for (int i = 0; i < N; i++) {
		cout << answers[i] << endl;
	}
	
	return 0;
}

