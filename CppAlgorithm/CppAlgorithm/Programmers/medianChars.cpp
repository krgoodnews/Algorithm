// 프로그래머스 - 가운데 글자 가져오기

#include <iostream>
#include <string>
#include <vector>
#include <cstring>
using namespace std;

string solution(string s) {
	
	char cArr[s.size() + 1];
	strcpy(cArr, s.c_str());
	
	string answer = "";
	
	if (s.size() % 2 == 0) { // 짝수
		
		answer.push_back(cArr[int((s.size() / 2) - 1)]);
		answer.push_back(cArr[int(s.size() / 2)]);
		
	} else {
		answer = cArr[int(s.size() / 2)];
	}
	
	return answer;
}
