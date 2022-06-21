#include <stdio.h>
#include <stdlib.h>

#include "functions.h"
#include "elbrusfunctions.h"

int main(int argc, char* argv[]) {
    long Q = 0,
         L = 0,
         F = 0;
    if (argc == 4) {
        Q = atoi(argv[1]);
        L = atoi(argv[2]);
        F = atoi(argv[3]);
    } 
    int QL = Q * L,
        LF = L * F,
        QF = Q * F;
    float *inp = new float[QL],
          *wts = new float[LF],
          *bias = new float[F],
          *out = new float[QF],
          *out2 = new float[QF],
          *out3 = new float[QF],
          *out4 = new float[QF];
    MatrixInitBy0(inp, QL);
    MatrixInitBy0(wts, LF);
    MatrixInitBy0(bias, F);
    MatrixInitBy0(out, QF);
    //MatrixPrintV2(inp, QL, L);
    //MatrixPrintV2(wts, LF, F);  
    //MatrixPrintV2(out, QF, F);
    MatrixInitByIncrement(inp, Q, L, 0, 1);
    MatrixInitByIncrement(wts, F, L, 5, 1);
    MatrixInitByIncrement(bias, F, 1, 1, 1);
    //MatrixPrintV2(inp, QL, L);
    //MatrixPrintV2(wts, LF, F);
    //MatrixMul(inp, wts, out, Q, L, F);

    for (int i = 0; i < Q; i++) {
        for (int j = 0; j < L; j++) {
            for (int k = 0; k < F; k++) {
                out2[k + i * F] += inp[j + i * L] * wts[j + k * L];
            }
        }
    }
    for (int i = 0; i < Q; i++) {
        for (int k = 0; k < F; k++) {
            out2[k + i * F] += bias[k];
        }
    }
    for (int i = 0; i < Q; i++) {
        for (int k = 0; k < F; k++) {
            out2[k + i * F] = out2[k + i * F] >= 0 ? out2[k + i * F] : 0;
        }
    }

    //MatrixPrintV2(inp, QL, L);
    //MatrixPrintV2(wts, LF, F);
    //ElbrusMatrixMulParallel(inp, wts, out3, Q, L, F);
    //ElbrusMatrixMulBias(inp, wts, bias, out4, Q, L, F);
    ElbrusMatrixMulRelu(inp, wts, bias, out, Q, L, F);
    //MatrixPrintV2(out3, QF, F);
    //MatrixPrintV2(out4, QF, F);

    //MatrixPrintV2(out2, QF, F);
    //MatrixPrintV2(out, QF, F);
    PrintDiff(out, out2, QF, F);
    return 0;
}