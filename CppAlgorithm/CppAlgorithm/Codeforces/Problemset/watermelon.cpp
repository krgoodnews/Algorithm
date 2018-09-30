#include <iostream>

using namespace std;

bool canDivide(int n) {
	if (n <= 3) return false;
	if (n % 2 == 1) return false;
	return true;
}

int main() {
	cin.clear();
	
	int w;
	cin >> w;
	
	if(canDivide(w) == true) cout << "YES";
	else cout << "NO";
	return 0;
}
