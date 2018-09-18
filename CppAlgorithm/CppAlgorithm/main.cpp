
// 소수 찾기

#include <string>
#include <vector>
#include <iostream>
#include <cmath>
#include <algorithm>

using namespace std;

// for i in 2...sqrt(n)

int solution(int n) {
	int answer = 0;
	
	double sqt = sqrt(n);
	
	for (int ni = 1; ni <= sqt; ni++) {
		cout << ni << endl;
	}

	return answer;
}

int main() {
	solution(101);
	return 0;
}
