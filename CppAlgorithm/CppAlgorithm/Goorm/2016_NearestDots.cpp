
#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
	
	vector<long long> nums;
	
	int N;
	cin >> N;
	
	for (int ni = 0; ni < N; ni++) {
		long long num;
		cin >> num;
		nums.push_back(num);
	}
	
	sort(nums.begin(), nums.end());
	
	long long minLength = -1;
	long long minNum = 0;
	long long maxNum = 0;
	for (int ni = 1; ni < N; ni++) {
		long long length = nums[ni] - nums[ni-1];
		if (minLength == -1) {
			minLength = length;
			minNum = nums[ni-1];
			maxNum = nums[ni];
		}
		if (length < minLength) {
			minLength = length;
			minNum = nums[ni-1];
			maxNum = nums[ni];
		}
	}
	
	cout << minNum << " " << maxNum << endl;
	
	return 0;
}
