#include <iostream>
#include <vector>
#include <stack>

using namespace std;


bool isOpenBracket(char ch) {
	return (ch == '(' || ch == '{' || ch == '[');
}

bool isCloseBracket(char ch) {
	return (ch == ')' || ch == '}' || ch == ']');
}

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

vector<int> getDepthArr(string str) {
	vector<int> result;
	stack<char> stk;
	
	for (int si = 0; si < str.size(); si++) {
		char ch = str[si];
		
		if (isOpenBracket(ch)) {
			result.push_back(stk.size());
			stk.push(ch);
		} else if (isCloseBracket(ch)) {
			stk.pop();
			result.push_back(stk.size());
		} else {
			result.push_back(stk.size());
		}
	}
	
	return result;
}

int getFirstCloseBracket(string str) {
	for (int si = 0; si < str.size(); si++) {
		char ch = str[si];
		
		if (isCloseBracket(ch)) {
			return si;
		}
	}
	
	return -1;
}

int main() {
	
	vector<bool> answers;
	
	
	int N;
	cin >> N;
	
	vector<vector<int>> ansNums(N);
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
		
		if (isPairBracket(onlyBracket)) {
			
			vector<int> temp = getDepthArr(strArr[ni]);
			
			copy(temp.begin(), temp.end(), back_inserter(ansNums[ni]));
		} else {
			ansNums[ni].push_back(getFirstCloseBracket(strArr[ni]));
		}
		
		
		//		answers.push_back(isPairBracket(onlyBracket));
	}
	
	//	for (int ai = 0; ai < answers.size(); ai++) {
	//		bool answer = answers[ai];
	//
	//		cout << (answer ? "YES" : "NO") << endl;
	//	}
	
	for (int ni = 0; ni < ansNums.size(); ni++) {
		vector<int> answer = ansNums[ni];
		for (int ai = 0; ai < answer.size(); ai++) {
			
			cout << answer[ai] << " ";
		}
		cout << endl;
	}
	
	return 0;
}


/*
 
 */
