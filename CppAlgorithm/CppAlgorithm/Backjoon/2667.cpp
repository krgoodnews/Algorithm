#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int N, cnt;
int apartments[26][26];
int visited[26][26];
int dr[4] = {-1, 0, 1, 0};
int dc[4] = {0, 1, 0, -1};
vector<int> arr;

int dfs(int r, int c) {
	for(int i = 0; i < 4; i ++) {
		int nextR = r + dr[i];
		int nextC = c + dc[i];
		// 아파트가 존재하고 해당 아파트에 방문하지 않음
		if(nextR >= 0 && nextC >= 0 && nextC < N && nextR < N && !visited[nextR][nextC] && apartments[nextR][nextC] == 1) {
			// 방문 처리
			visited[nextR][nextC] = 1;
			// 아파트 갯수 추가
			cnt ++;
			dfs(nextR, nextC);
		}
	}
	return 0;
}

int main() {
	cin >> N;
	for(int i = 0; i < N; i ++) {
		for(int j = 0; j < N; j ++) {
			// 1자리씩 읽음
			scanf("%1d", &apartments[i][j]);
		}
	}
	int ans = 0;
	for(int i = 0; i < N; i ++) {
		for(int j = 0; j < N; j ++) {
			if(!visited[i][j] && apartments[i][j] == 1) {
				visited[i][j] = 1;
				// 단지 추가
				ans ++;
				// 아파트 숫자 증가
				cnt ++;
				dfs(i, j);
				// 아파트 숫자 배열에 저장
				arr.push_back(cnt);
				cnt = 0;
			}
		}
	}
	// 오름차순 정렬
	sort(arr.begin(), arr.end());
	cout << ans << endl;;
	for(int i = 0; i < arr.size(); i ++) {
		cout << arr[i] << " ";
	}
	return 0;
}
