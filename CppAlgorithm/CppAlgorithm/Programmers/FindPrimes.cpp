
// 소수 찾기

#include <string>
#include <vector>
#include <iostream>
#include <cmath>
#include <algorithm>

using namespace std;

// for i in 2...sqrt(n)

long long solution(int n) {
	long long answer = 0;
	
	bool isPrimes[n+1];
	for (int i = 0; i<sizeof(isPrimes); i++) {
		isPrimes[i] = true;
	}
	
	
	double sqt = sqrt(n); // 제곱근만큼 돈다
	for (int ni = 2; ni <= sqt; ni++) {
		if (isPrimes[ni] == true) {
			for (int nj = ni * ni; nj <= n; nj += ni) {
				isPrimes[nj] = false;
			}
		}
	}
	
	vector<int> primes;
	
	for (int ni = 2; ni <= n; ni++) {
		if (isPrimes[ni] == true) {
			answer += ni;
			primes.push_back(ni);
		}
	}
	
	return answer;
}

int main() {
	solution(10);
	return 0;
}
