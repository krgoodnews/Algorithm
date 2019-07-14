//
//#include <iostream>
//#include <string>
//
//using namespace std;
//
//string makeAbbreviation(string str) {
//  if (str.size() <= 10) {
//    return str;
//  }
//
//  string result;
//
//  result.push_back(str.front());
//  int size = str.size();
//  string strSize = to_string(size - 2);
//  result += strSize;
//  result.push_back(str.back());
//
//  return result;
//}
//int main() {
//
//  int tc = 0;
//
//  cin >> tc;
//
//  string words[tc];
//  string abbreviations[tc]; // 약어들
//
//
//  // 입력받기
//  for (int i = 0; i < tc; i++) {
//    string word;
//    cin >> word;
//    words[i] = word;
//  }
//
//  // 변환하기
//  for (int i = 0; i < tc; i++) {
//    string abbr = makeAbbreviation(words[i]);
//    cout << abbr << endl;
//  }
//
//
//  return 0;
//}

#include <iostream>
#include <cstdio>
using namespace std;

int main() {
//  int a;
//  long b;
//  char c;
//  float d;
//  double e;
//  // cin >> a >> b >> c >> d >> e;
//  scanf("%d %ld %c %f %lf", &a, &b, &c, &d, &e);
//
//  printf("%d\n", a);
//  printf("%ld\n", b);
//  printf("%c\n", c);
//  printf("%f\n", d);
//  printf("%lf\n", e);

  int n;
  cin >> n;
  cin.ignore(numeric_limits<streamsize>::max(), '\n');

  string numStrings[] = { "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };

  if (1 <= n && n <= 9) {
    cout << numStrings[n-1];
  } else {
    cout << "Greater than 9";
  }
  return 0;
}
