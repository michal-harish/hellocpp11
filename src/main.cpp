#if !defined(__cplusplus)
#error C++ compiler required.
#endif

#if __cplusplus < 201103L
#error at least C++11 compiler required
#endif 

#include <iostream>
#include <vector>
#include <librdkafka/rdkafkacpp.h>
#include "func.h"
#include "config.h"

using namespace std;

int main() {

	cout << __cplusplus;

	vector<int> v { 1,2,3,4,5,6, myfunc() };

	for(auto vi = v.begin(); vi != v.end(); vi++) {
		cout << *vi;
		cout << RdKafka::err2str( RdKafka::ErrorCode::ERR__BEGIN) << endl;
	}
	
	return 0;
}
