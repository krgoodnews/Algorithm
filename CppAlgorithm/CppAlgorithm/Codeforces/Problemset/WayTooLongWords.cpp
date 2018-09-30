
#include <iostream>
#include <string>

using namespace std;

string makeAbbreviation(string str) {
	if (str.size() <= 10) {
		return str;
	}
	
	string result;
	
	result.push_back(str.front());
	int size = str.size();
	string strSize = to_string(size - 2);
	result += strSize;
	result.push_back(str.back());
	
	return result;
}
int main() {
	
	int tc = 0;
	
	cin >> tc;

	string words[tc];
	string abbreviations[tc]; // 약어들
	
	
	// 입력받기
	for (int i = 0; i < tc; i++) {
		string word;
		cin >> word;
		words[i] = word;
	}
	
	// 변환하기
	for (int i = 0; i < tc; i++) {
		string abbr = makeAbbreviation(words[i]);
		cout << abbr << endl;
	}
	
	
	return 0;
}
