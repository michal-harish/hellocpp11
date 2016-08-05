#include "func.h"
#include <xmmintrin.h>
#include <vector>
#include <stddef.h>

void vectorAdd(float* a, float* b, float* c, size_t n) {
	__m128 A, B, C;
	for (size_t i = 0; i < n; i += 4) {
		A = _mm_load_ps(&a[i]);
		B = _mm_load_ps(&b[i]);
		C = _mm_add_ps(A, B);
		_mm_store_ps(&c[i], C);
	}
}

void vectorSub(float* a, float* b, float* c, size_t n) {
	__m128 A, B, C;
	for (size_t i = 0; i < n; i += 4) {
		A = _mm_load_ps(&a[i]);
		B = _mm_load_ps(&b[i]);
		C = _mm_sub_ps(A, B);
		_mm_store_ps(&c[i], C);
	}
}

void vectorMultiply(float* a, float* b, float* c, size_t n) {
	__m128 A, B, C;
	for (size_t i = 0; i < n; i += 4) {
		A = _mm_load_ps(&a[i]);
		B = _mm_load_ps(&b[i]);
		C = _mm_mul_ps(A, B);
		_mm_store_ps(&c[i], C);
	}
}

void vectorDiv(float* a, float* b, float* c, size_t n) {
	__m128 A, B, C;
	for (size_t i = 0; i < n; i += 4) {
		A = _mm_load_ps(&a[i]);
		B = _mm_load_ps(&b[i]);
		C = _mm_div_ps(A, B);
		_mm_store_ps(&c[i], C);
	}
}
