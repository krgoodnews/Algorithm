#include <iostream>
#include <vector>
using namespace std;

void split(const string& s, char c,
		   vector<string>& v) {
	string::size_type i = 0;
	string::size_type j = s.find(c);
	
	while (j != string::npos) {
		v.push_back(s.substr(i, j-i));
		i = ++j;
		j = s.find(c, j);
		
		if (j == string::npos)
			v.push_back(s.substr(i, s.length()));
	}
}


int main() {
	
	vector<string> items;
	string str;
	getline(cin, str);
	
	split(str, ' ', items);
	
	vector<string> pocket;
	
	vector<string> garbage;
	
	for (int ii = 0; ii < items.size(); ii++) {
		string item = items[ii];
		
		if (pocket.size() < 3) {
			//			cout << "insert " << item << endl;
			pocket.insert(pocket.begin(), item);
		} else {
			int idx = find(pocket.begin(), pocket.end(), item) - pocket.begin();
			
			if( idx < pocket.size() ) {
				//				cout << "pass " << pocket[idx] << endl;
				//				remove(pocket.begin(), pocket.end(), item);
				pocket.erase(pocket.begin() + idx);
				pocket.insert(pocket.begin(), item);
			} else {
				//				std::cout << item << " not found.\n";
				//				cout << "garbage " << pocket.back() << endl;
				garbage.push_back(pocket.back());
				pocket.pop_back();
				pocket.insert(pocket.begin(), item);
			}
			
		}
	}
	
	if (garbage.size() == 0) garbage.push_back("0");
	
	for (int gi = 0; gi < garbage.size(); gi++) {
		cout << garbage[gi] << "\n";
	}
	
	return 0;
}
