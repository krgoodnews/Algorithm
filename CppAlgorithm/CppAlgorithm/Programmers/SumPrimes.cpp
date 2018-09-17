#include <vector>
#include <iostream>
#include <algorithm>

using namespace std;

vector<long long> primes; // 소수 벡터

bool isPrime(int n) {
	
	if (n == 2) return true;
	
	for (int i = 0; i < primes.size(); i++) {
		if (n % primes[i] == 0) return false;
	}
	
	return true;
}

long long solution(int N) {
	
	primes.push_back(2);
	
	// 계산하기
	for (int ni = 3; ni <= N; ni++) {
		if (isPrime(ni) == true) {
			primes.push_back(ni);
		}
	}
	
	
	// 모든 소수의 합 구하기
	
	long long answer = 0;
	for (int i = 0; i < primes.size(); i++) {
		answer += primes[i];
	}
	return answer;
}

