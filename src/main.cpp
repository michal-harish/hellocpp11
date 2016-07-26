#include <iostream>
#include <vector>

#include <librdkafka/rdkafkacpp.h>

#include "func.h"

using namespace std;

int main() {

	vector<int> v { 1,2,3,4,5,6, myfunc() };

	for(auto vi = v.begin(); vi != v.end(); vi++) {
		cout << *vi;
		cout << RdKafka::err2str( RdKafka::ErrorCode::ERR__BEGIN) << endl;
	}
	
	return 0;
}
