#ifndef FUNCTIONS_H
#define FUNCTIONS_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define p2(x) 1 << x
#define p8(x) 1 << (3 * x)

timespec diff(timespec start, timespec end);

int MatrixTranspose(float *M, float *Mt, int lines, int cols);

int MatrixMul(float *A, float *B, float *C, int sizeM, int sizeN, int sizeK);

int MatrixMul1(float *A, float *B, float *C, int sizeM, int sizeN, int sizeK);

int MatrixMulTest(float *A, float *B, float *C, int sizeM, int sizeN, int sizeK);

int MatrixInitBy0(float *M, int sizeM);

int MatrixInitBy0(int *M, int sizeM);

int MatrixInitByIncrement(float *M, int rows, int cols, int start = 0, int step = 1);

int MatrixInitByRnd(float *M, int sizeM);

int MatrixReadFromFile(float *M, int sizeM, FILE *file);

int MatrixPrint(float *M, int sizeM, int sizeL);

int MatrixPrintV2(float *M, int sizeM, int sizeL);

int MatrixPrintV3(float *M, int sizeM, int sizeL);

float MaxDiff(float *C, float *C2, int size, int len);

float AvgDiff(float *C, float *C2, int size);

float RelMaxDiff(float *C, float *C2, int size);

float RelAvgDiff(float *C, float *C2, int size);

int PrintDiff(float *C, float *C2, int size, int len);

int is_cmp(const char* s1, const char* s2);

int compare(const char* s1, const char* s2);

#endif