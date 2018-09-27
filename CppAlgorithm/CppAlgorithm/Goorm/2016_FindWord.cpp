
#include <iostream>
#include <string>
#include <vector>

using namespace std;


void split(const string& s, char c,
		   vector<string>& v) {
	string::size_type i = 0;
	string::size_type j = s.find(c);
	
	while (j != string::npos) {
		v.push_back(s.substr(i, j-i));
		i = ++j;
		j = s.find(c, j);
		
		if (j == string::npos)
			v.push_back(s.substr(i, s.length()));
	}
}


// 모음 연속 두개
bool isRule01(string str) {
	
	if (str.size() < 2) return false;
	
	string::iterator iter = str.begin();
	
	for (iter = str.begin(); iter != str.end() - 1; ++iter) {
		
		if (iter[0] == '0' && iter[1] == '0') return true;
	}
	
	return false;
}


bool isRule02(string str) {
	
	if (str.size() < 3) return false;
	
	string::iterator iter = str.begin();
	
	for (iter = str.begin(); iter != str.end() - 2; ++iter) {
		
		if (iter[0] == '1' && iter[1] == '1' && iter[2] == '1') return true;
	}
	
	return false;
}


// 모음이면 true, 자음이면 false;
bool isVowel(char ch) {
	if (ch == 'a') return true;
	if (ch == 'e') return true;
	if (ch == 'i') return true;
	if (ch == 'o') return true;
	if (ch == 'u') return true;
	return false;
}


string simpleStr(string str) {
	string result;
	
	for (int si = 0; si < str.size(); si++) {
		if (isVowel(str[si])) result.push_back('0');
		else result.push_back('1');
		
	}
	
	return result;
}

int main() {
	
	vector<string> strArr;
	string line;
	getline(cin, line);
	
	
	split(line, ' ', strArr);
	
	int countRule01 = 0;
	int countRule02 = 0;
	
	for (int si = 0; si < strArr.size(); si++) {
		string word = simpleStr(strArr[si]);
		if (isRule01(word)) countRule01++;
		if (isRule02(word)) countRule02++;
	}
	
	cout << countRule01 << endl;
	cout << countRule02 << endl;
	
	return 0;
}
