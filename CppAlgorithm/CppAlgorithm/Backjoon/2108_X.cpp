

#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>

using namespace std;

/*
 5
 1
 3
 8
 -2
 2
 */

int max(vector<int> arr) {
	int maxNum = arr[0];
	
	for (int ai = 1; ai < arr.size(); ai++) {
		if (arr[ai] < maxNum) maxNum = arr[ai];
	}
	
	return maxNum;
}

int getModeNum(vector<int> ar) {
	int answer = 0;
	
	vector<int> countArr(8001); // 음수와 양수
	
	for (int ai = 0; ai < ar.size(); ai++) {
		int num = ar[ai];
		countArr[num + 4000] += 1;
	}
	
	int maxNum = max(countArr);
	vector<int> maxArr;
	for (int ai = 0; ai < ar.size(); ai++) {
		if(countArr[ai] == maxNum) maxArr.push_back(ai - 4000);
	}
	
	sort(maxArr.begin(), maxArr.end());
	
	answer = (maxArr.size() == 1) ? maxArr[0] : maxArr[1];
	
	return answer;
}

int main() {
	
	int N;
	cin >> N;
	
	vector<int> arr;
	
	int sum = 0;
	for (int ni = 0; ni < N; ni++) {
		int num = 0;
		cin >> num;
		arr.push_back(num);
		sum += num;
	}
	
	
	// 평균값
	double averNum = double(sum) / double(arr.size());
	averNum = floor(averNum + 0.5);
	
	// 중앙값
	sort(arr.begin(), arr.end());
	int midNum = arr[N/2];
	
	// 범위
	int maxNum = arr[N-1];
	int minNum = arr[0];
	int range = maxNum - minNum;
	
	// 최빈값
	int modeNum = 0;
	modeNum = getModeNum(arr);
	
	// 출력
	cout << averNum << endl;
	cout << midNum << endl;
	cout << modeNum << endl;
	cout << range << endl;
	
	return 0;
}


