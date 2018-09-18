
// 프로그래머스 - 완주하지 못한 선수

#include <string>
#include <vector>
#include <set>

using namespace std;

string solution(vector<string> participant, vector<string> completion) {
	set<string> names;
	for (int pi = 0; pi < participant.size(); pi++) {
		string name = participant[pi];
		
		if (names.find(name) != names.end()) {
			names.erase(name);
		} else {
			names.insert(name);
		}
	}
	
	for (int ci = 0; ci < completion.size(); ci++) {
		string name = completion[ci];
		
		if (names.find(name) != names.end()) {
			names.erase(name);
		} else {
			names.insert(name);
		}
	}
	
	set<string>::iterator iter = names.begin();
	string answer = *iter;
	return answer;
}

/*
 string solu = solution({"leo", "kiki", "eden"}, {"eden", "kiki"});
 
 cout << solu << "\n";
 */

