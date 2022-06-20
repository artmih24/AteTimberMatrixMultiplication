#ifndef ELBRUSFUNCTIONS_H
#define ELBRUSFUNCTIONS_H

#include <e2kintrin.h>
#include <stdio.h>
#include <omp.h>

#include "functions.h"

int ElbrusMatrixMul(float *inp, float *wts, float *out, long Q, long L, long F);

int ElbrusMatrixMulParallel(float *inp, float *wts, float *out, long Q, long L, long F);

int ElbrusMatrixMulBias(float *inp, float *wts, float *bias, float *out, long Q, long L, long F);

int ElbrusMatrixMulRelu(float *inp, float *wts, float *bias, float *out, long Q, long L, long F);

#endif