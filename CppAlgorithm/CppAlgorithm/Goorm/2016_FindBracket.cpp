#include <iostream>
#include <vector>
#include <stack>

using namespace std;


// 문자열을 주면 괄호만 남긴다
string remainBracket(string str) {
	string result = "";
	
	for (int si = 0; si < str.size(); si++) {
		char ch = str[si];
		
		if (ch == '('
			|| ch == '{'
			|| ch == '['
			|| ch == ')'
			|| ch == '}'
			|| ch == ']')
		{
			result.push_back(ch);
		}
		
	}
	return result;
}

bool isPairBracket(string str) {
	stack<char> stk;
	
	for (int si = 0; si < str.size(); si++) {
		char ch = str[si];
		
		if (ch == '(' || ch == '{' || ch == '[') {
			stk.push(ch);
		} else {
			if (stk.size() == 0) return false;
			
			char openCh = stk.top(); stk.pop();
			
			if (openCh == '(') {
				if (ch == ')') continue;
				else return false;
			}
			
			if (openCh == '{') {
				if (ch == '}') continue;
				else return false;
			}
			
			if (openCh == '[') {
				if (ch == ']') continue;
				else return false;
			}
			
		}
	}
	
	if (stk.size() > 0) return false;
	
	return true;
}

int main() {
	
	vector<bool> answers;
	
	int N;
	cin >> N;
	
	vector<string> strArr;
	
	// 문자열들 입력받기
	for (int ni = 0; ni < N; ni++) {
		string str;
		cin >> str;
		strArr.push_back(str);
	}
	
	for (int ni = 0; ni < N; ni++) {
		string str = strArr[ni];
		
		string onlyBracket = remainBracket(str);
		
		answers.push_back(isPairBracket(onlyBracket));
	}
	
	for (int ai = 0; ai < answers.size(); ai++) {
		bool answer = answers[ai];
		
		cout << (answer ? "YES" : "NO") << endl;
	}
	
	return 0;
}


/*
 
 */
