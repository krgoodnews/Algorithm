#include <iostream>
#include <algorithm>

using namespace std;

int fn(int n) {
	
	string strN = to_string(n);
	reverse(strN.begin(), strN.end());
	
	int rn = stoi(strN);
	
	return n + rn;
}

bool isPalindrome(int n) {
	string strN = to_string(n);
	
	string reverseN = strN;
	reverse(reverseN.begin(), reverseN.end());
	
	return (strN == reverseN);
}

int main() {
	
	int N;
	cin >> N;
	
	int f1 = fn(N);
	if (10000 <= f1) {
		cout << "-1" << endl;
		return 0;
	}
	if (isPalindrome(f1)) {
		cout << f1 << endl;
		return 0;
	}
	
	
	int f2 = fn(f1);
	if (10000 <= f2) {
		cout << "-1" << endl;
		return 0;
	}
	if (isPalindrome(f2)) {
		cout << f2 << endl;
		return 0;
	}
	
	int f3 = fn(f2);
	if (10000 <= f3) {
		cout << "-1" << endl;
		return 0;
	}
	if (isPalindrome(f3)) {
		cout << f3 << endl;
		return 0;
	}
	
	cout << "-1" << endl;
	
	
	return 0;
}
