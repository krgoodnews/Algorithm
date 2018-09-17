// 구름 - 약수구하기

#include <iostream>
#include <vector>
#include <algorithm>


using namespace std;

vector<int> answer;

int main() {
	
	vector<int> arr_submultiple;
	
	int n;
	cin >> n;
	
	int i;
	for (i = 1; i * i < n; i++) {
		if (n % i == 0) {
			arr_submultiple.push_back(i);
			arr_submultiple.push_back(n/i);
		}
	}
	if (i * i == n) arr_submultiple.push_back(n / i);
	
	sort(arr_submultiple.begin(), arr_submultiple.end());
	
	// 정답 출력
	for (int i = 0; i < arr_submultiple.size() - 1; i++) {
		cout << arr_submultiple[i] << " ";
	}
	cout << arr_submultiple[arr_submultiple.size() - 1] << "\n";
	
	
	
	return 0;
}
