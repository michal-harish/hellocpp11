#include <iostream>
#include <vector>
#include "func.h"

using namespace std;

int main() {

	vector<int> v { 1,2,3,4,5,6, myfunc() };

	for(auto vi = v.begin(); vi != v.end(); vi++) {
		cout << *vi << endl;
	}
	
	return 0;
}
