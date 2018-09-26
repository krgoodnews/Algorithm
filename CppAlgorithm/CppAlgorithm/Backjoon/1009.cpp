
#include <iostream>
#include <vector>
#include <deque>

using namespace std;

/*
 5
 1 6
 3 7
 6 2
 7 100
 9 635
 */

int main() {
	
	int n;
	cin >> n;
	
	for (int ni = 0; ni < n; ni++) {
		
		int a,b;
		cin >> a >> b;
		
		int answer = 1;
		for (int i = 0; i < b; i++) {
			answer = answer * a;
			answer = answer % 10;
		}
		
		if (answer == 0) answer = 10;
		cout << answer << endl;
	}
	
	
	return 0;
	
	
}

