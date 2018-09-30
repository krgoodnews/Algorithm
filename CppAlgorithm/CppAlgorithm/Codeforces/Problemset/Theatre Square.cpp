
#include <iostream>
#include <cmath>

using namespace std;

int main() {
	unsigned long long n, m, a;
	cin >> n >> m >> a;
	
	unsigned long long width = ceil(((double)n/(double)a));
	unsigned long long height = ceil(((double)m/(double)a));
	
	unsigned long long answer = width * height;
	cout << answer ;
	return 0;
}
