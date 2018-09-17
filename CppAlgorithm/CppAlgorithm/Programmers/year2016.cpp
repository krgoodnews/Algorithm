#include <string>
#include <vector>
#include <iostream>

using namespace std;

string solution(int a, int b) {
	int days[] = {0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
	
	//SUN,MON,TUE,WED,THU,FRI,SAT
	string dayStrs[] = {"THU","FRI","SAT","SUN","MON","TUE","WED"};
	
	int totalDay = 0;
	for (int i = 0; i < a; i++) {
		totalDay += days[i];
	}
	totalDay += b;
	
	string answer = dayStrs[totalDay%7];
	return answer;
}
