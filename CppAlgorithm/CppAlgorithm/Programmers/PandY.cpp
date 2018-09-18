// 문자열 내 p와 y의 개수

#include <string>
#include <iostream>
#include <cctype>
#include <cstring>

using namespace std;

bool solution(string s)
{
	char cArr[s.size() + 1];
	strcpy(cArr, s.c_str());
	
	int countP = 0;
	int countY = 0;
	
	for (int ci = 0; ci<sizeof(cArr); ci++) {
		if (tolower(cArr[ci]) == 'p') countP++;
		if (tolower(cArr[ci]) == 'y') countY++;
	}
	
	
	
	bool answer = countP == countY;
	return answer;
}
