#include <iostream>
#include <vector>
#include <librdkafka/rdkafkacpp.h>
#include "func.h"

using namespace std;

int main() {

	cout << __cplusplus << endl;

	vector<float> v { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

	for (auto vi = v.begin(); vi != v.end(); vi++) {
		cout << *vi;
	}

	cout << endl;

	const size_t num = 7;
	float a[num] = { 1, 2, 3, 4, 5, 6, 7 };
	float b[num] = { 1, -1, -2, 1, -3, -2, 5 };
	float c[num];
	vectorAdd(a, b, c, num);
	for (int i = 0; i < num; ++i) {
		printf("%f ", c[i]);
	}
	printf("\n");

	return 0;
}
