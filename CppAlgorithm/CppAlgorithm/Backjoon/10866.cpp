
#include <iostream>
#include <vector>
#include <deque>

using namespace std;


//push_front X: 정수 X를 덱의 앞에 넣는다.
//push_back X: 정수 X를 덱의 뒤에 넣는다.
//pop_front: 덱의 가장 앞에 있는 수를 빼고, 그 수를 출력한다. 만약, 덱에 들어있는 정수가 없는 경우에는 -1을 출력한다.
//pop_back: 덱의 가장 뒤에 있는 수를 빼고, 그 수를 출력한다. 만약, 덱에 들어있는 정수가 없는 경우에는 -1을 출력한다.
//size: 덱에 들어있는 정수의 개수를 출력한다.
//empty: 덱이 비어있으면 1을, 아니면 0을 출력한다.
//front: 덱의 가장 앞에 있는 정수를 출력한다. 만약 덱에 들어있는 정수가 없는 경우에는 -1을 출력한다.
//back: 덱의 가장 뒤에 있는 정수를 출력한다. 만약 덱에 들어있는 정수가 없는 경우에는 -1을 출력한다.

int main() {
	
	int n;
	cin >> n;
	
	deque<int> dq;
	vector<int> answer;
	
	for (int ni = 0; ni < n; ni++) {
		string a;
		int b = 0;
		cin >> a;
		
		if (a == "push_back" || a == "push_front") {
			cin >> b;
		}
		
		if (a == "push_front") {
			dq.push_front(b);
		} else if (a == "push_back") {
			dq.push_back(b);
		} else if (a == "pop_front") {
			if (dq.empty()) {
				answer.push_back(-1);
			} else {
				answer.push_back(dq.front());
				dq.pop_front();
			}
		} else if (a == "pop_back") {
			if (dq.empty()) {
				answer.push_back(-1);
			} else {
				answer.push_back(dq.back());
				dq.pop_back();
			}
		} else if (a == "size") {
			answer.push_back(int(dq.size()));
		} else if (a == "empty") {
			answer.push_back(dq.empty() ? 1 : 0);
		} else if (a == "front") {
			answer.push_back(dq.empty() ? -1 : dq.front());
		} else if (a == "back") {
			answer.push_back(dq.empty() ? -1 : dq.back());
			
		}
		
		
	}
	
	vector<int>::iterator iter = answer.begin();
	
	for (iter = answer.begin(); iter != answer.end(); ++iter) {
		cout << *iter << "\n";
	}
	
	
	
	return 0;
	
	
}

