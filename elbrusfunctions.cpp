#include <e2kintrin.h>
#include <stdio.h>
#include <omp.h>

#include "functions.h"
#include "elbrusdefines.h"

void MulKernel(float *inp, float *wts, float *out, int L, int F)
{
    __v2di vinp12,
           vinp22,
           vwts14,
           vwts24,
           vwts34,
           vwts44,
           sum12,
           sum22,
           partsum18,
           partsum28,
           partsum38,
           partsum48,
           partsum58,
           partsum68,
           partsum78,
           partsum88;

    partsum18 = zeros;
    partsum28 = zeros;
    partsum38 = zeros;
    partsum48 = zeros;
    partsum58 = zeros;
    partsum68 = zeros;
    partsum78 = zeros;
    partsum88 = zeros;

    for (int l = 0; l < L; l += 4) {
        vinp12 = addr(inp + l    );
        vinp22 = addr(inp + l + L);

        vwts14 = addr(wts + l        );
        vwts24 = addr(wts + l + L    );
        vwts34 = addr(wts + l + L * 2);
        vwts44 = addr(wts + l + L * 3);

        partsum18 = muladds(vinp12, vwts14, partsum18);
        partsum28 = muladds(vinp12, vwts24, partsum28);
        partsum38 = muladds(vinp12, vwts34, partsum38);
        partsum48 = muladds(vinp12, vwts44, partsum48);
        partsum58 = muladds(vinp22, vwts14, partsum58);
        partsum68 = muladds(vinp22, vwts24, partsum68);
        partsum78 = muladds(vinp22, vwts34, partsum78);
        partsum88 = muladds(vinp22, vwts44, partsum88);
    }

    sum12 = hadds4(partsum18, partsum28, partsum38, partsum48);
    sum22 = hadds4(partsum58, partsum68, partsum78, partsum88);

    addr(out    ) = sum12;
    addr(out + F) = sum22;
}

void MulKernel48(float *inp, float *wts, float *out, int L, int F)
{
    // timespec start, end, tdiff;
    // clock_gettime(CLOCK_THREAD_CPUTIME_ID, &start);

    __v2di vinp1, vinp2, vinp3, vinp4, vinp5, vinp6,

           vwts1, vwts2, vwts3, vwts4, vwts5, vwts6, vwts7, vwts8,

           sum11, sum12, 
           sum21, sum22, 
           sum31, sum32,
           sum41, sum42, 
           sum51, sum52, 
           sum61, sum62,

           partsum11, partsum12, partsum13, partsum14, partsum15, partsum16, partsum17, partsum18,
           partsum21, partsum22, partsum23, partsum24, partsum25, partsum26, partsum27, partsum28,
           partsum31, partsum32, partsum33, partsum34, partsum35, partsum36, partsum37, partsum38,
           partsum41, partsum42, partsum43, partsum44, partsum45, partsum46, partsum47, partsum48,
           partsum51, partsum52, partsum53, partsum54, partsum55, partsum56, partsum57, partsum58,
           partsum61, partsum62, partsum63, partsum64, partsum65, partsum66, partsum67, partsum68;

    partsum11 = zeros;
    partsum12 = partsum11;
    partsum13 = partsum11;
    partsum14 = partsum11;
    partsum15 = partsum11;
    partsum16 = partsum11;
    partsum17 = partsum11;
    partsum18 = partsum11;

    partsum21 = partsum11;
    partsum22 = partsum11;
    partsum23 = partsum11;
    partsum24 = partsum11;
    partsum25 = partsum11;
    partsum26 = partsum11;
    partsum27 = partsum11;
    partsum28 = partsum11;

    partsum31 = partsum11;
    partsum32 = partsum11;
    partsum33 = partsum11;
    partsum34 = partsum11;
    partsum35 = partsum11;
    partsum36 = partsum11;
    partsum37 = partsum11;
    partsum38 = partsum11;

    partsum41 = partsum11;
    partsum42 = partsum11;
    partsum43 = partsum11;
    partsum44 = partsum11;
    partsum45 = partsum11;
    partsum46 = partsum11;
    partsum47 = partsum11;
    partsum48 = partsum11;

    partsum51 = partsum11;
    partsum52 = partsum11;
    partsum53 = partsum11;
    partsum54 = partsum11;
    partsum55 = partsum11;
    partsum56 = partsum11;
    partsum57 = partsum11;
    partsum58 = partsum11;

    partsum61 = partsum11;
    partsum62 = partsum11;
    partsum63 = partsum11;
    partsum64 = partsum11;
    partsum65 = partsum11;
    partsum66 = partsum11;
    partsum67 = partsum11;
    partsum68 = partsum11;

    for (long l = 0; l < L; l += 4) {
        vinp1 = addr(inp + l        );
        vinp2 = addr(inp + l + L    );
        vinp3 = addr(inp + l + L * 2);
        vinp4 = addr(inp + l + L * 3);
        vinp5 = addr(inp + l + L * 4);
        vinp6 = addr(inp + l + L * 5);

        vwts1 = addr(wts + l        );
        vwts2 = addr(wts + l + L    );
        vwts3 = addr(wts + l + L * 2);
        vwts4 = addr(wts + l + L * 3);
        vwts5 = addr(wts + l + L * 4);
        vwts6 = addr(wts + l + L * 5);
        vwts7 = addr(wts + l + L * 6);
        vwts8 = addr(wts + l + L * 7);

        partsum11 = muladds(vinp1, vwts1, partsum11);
        partsum12 = muladds(vinp1, vwts2, partsum12);
        partsum13 = muladds(vinp1, vwts3, partsum13);
        partsum14 = muladds(vinp1, vwts4, partsum14);
        partsum15 = muladds(vinp1, vwts5, partsum15);
        partsum16 = muladds(vinp1, vwts6, partsum16);
        partsum17 = muladds(vinp1, vwts7, partsum17);
        partsum18 = muladds(vinp1, vwts8, partsum18);

        partsum21 = muladds(vinp2, vwts1, partsum21);
        partsum22 = muladds(vinp2, vwts2, partsum22);
        partsum23 = muladds(vinp2, vwts3, partsum23);
        partsum24 = muladds(vinp2, vwts4, partsum24);
        partsum25 = muladds(vinp2, vwts5, partsum25);
        partsum26 = muladds(vinp2, vwts6, partsum26);
        partsum27 = muladds(vinp2, vwts7, partsum27);
        partsum28 = muladds(vinp2, vwts8, partsum28);

        partsum31 = muladds(vinp3, vwts1, partsum31);
        partsum32 = muladds(vinp3, vwts2, partsum32);
        partsum33 = muladds(vinp3, vwts3, partsum33);
        partsum34 = muladds(vinp3, vwts4, partsum34);
        partsum35 = muladds(vinp3, vwts5, partsum35);
        partsum36 = muladds(vinp3, vwts6, partsum36);
        partsum37 = muladds(vinp3, vwts7, partsum37);
        partsum38 = muladds(vinp3, vwts8, partsum38);

        partsum41 = muladds(vinp4, vwts1, partsum41);
        partsum42 = muladds(vinp4, vwts2, partsum42);
        partsum43 = muladds(vinp4, vwts3, partsum43);
        partsum44 = muladds(vinp4, vwts4, partsum44);
        partsum45 = muladds(vinp4, vwts5, partsum45);
        partsum46 = muladds(vinp4, vwts6, partsum46);
        partsum47 = muladds(vinp4, vwts7, partsum47);
        partsum48 = muladds(vinp4, vwts8, partsum48);

        partsum51 = muladds(vinp5, vwts1, partsum51);
        partsum52 = muladds(vinp5, vwts2, partsum52);
        partsum53 = muladds(vinp5, vwts3, partsum53);
        partsum54 = muladds(vinp5, vwts4, partsum54);
        partsum55 = muladds(vinp5, vwts5, partsum55);
        partsum56 = muladds(vinp5, vwts6, partsum56);
        partsum57 = muladds(vinp5, vwts7, partsum57);
        partsum58 = muladds(vinp5, vwts8, partsum58);

        partsum61 = muladds(vinp6, vwts1, partsum61);
        partsum62 = muladds(vinp6, vwts2, partsum62);
        partsum63 = muladds(vinp6, vwts3, partsum63);
        partsum64 = muladds(vinp6, vwts4, partsum64);
        partsum65 = muladds(vinp6, vwts5, partsum65);
        partsum66 = muladds(vinp6, vwts6, partsum66);
        partsum67 = muladds(vinp6, vwts7, partsum67);
        partsum68 = muladds(vinp6, vwts8, partsum68);
    }

    sum11 = hadds4(partsum11, partsum12, partsum13, partsum14);
    sum12 = hadds4(partsum15, partsum16, partsum17, partsum18);

    sum21 = hadds4(partsum21, partsum22, partsum23, partsum24);
    sum22 = hadds4(partsum25, partsum26, partsum27, partsum28);

    sum31 = hadds4(partsum31, partsum32, partsum33, partsum34);
    sum32 = hadds4(partsum35, partsum36, partsum37, partsum38);

    sum41 = hadds4(partsum41, partsum42, partsum43, partsum44);
    sum42 = hadds4(partsum45, partsum46, partsum47, partsum48);

    sum51 = hadds4(partsum51, partsum52, partsum53, partsum54);
    sum52 = hadds4(partsum55, partsum56, partsum57, partsum58);

    sum61 = hadds4(partsum61, partsum62, partsum63, partsum64);
    sum62 = hadds4(partsum65, partsum66, partsum67, partsum68);

    addr(out            ) = sum11;
    addr(out         + 4) = sum12;
    addr(out + F        ) = sum21;
    addr(out + F     + 4) = sum22;
    addr(out + F * 2    ) = sum31;
    addr(out + F * 2 + 4) = sum32;
    addr(out + F * 3    ) = sum41;
    addr(out + F * 3 + 4) = sum42;
    addr(out + F * 4    ) = sum51;
    addr(out + F * 4 + 4) = sum52;
    addr(out + F * 5    ) = sum61;
    addr(out + F * 5 + 4) = sum62;

    // clock_gettime(CLOCK_THREAD_CPUTIME_ID, &end);
    // tdiff = diff(start, end);
    // double t_real = static_cast<double>(tdiff.tv_sec) + static_cast<double>(tdiff.tv_nsec) / 1.0e9,
    //        t_ideal = (6 * L * 8) / (24 * 1.5 * 1.0e9);
    // printf("t ideal = %f\n", t_ideal);
    // printf("t real = %f\n", t_real);
    // printf("p = %f%%\n", (t_ideal / t_real) * 100);
}

int ElbrusMatrixMul(float *inp, float *wts, float *out, long Q, long L, long F) {
    timespec start, end, tdiff;
    clock_gettime(CLOCK_THREAD_CPUTIME_ID, &start);
    for (long q = 0; q < Q; q += 6)
        for (long f = 0; f < F; f += 8)
            MulKernel48(inp + q * L, wts + f * L, out + f + q * F, L, F);
    clock_gettime(CLOCK_THREAD_CPUTIME_ID, &end);
    tdiff = diff(start, end);
    double t_real = static_cast<double>(tdiff.tv_sec) + static_cast<double>(tdiff.tv_nsec) / 1.0e9,
           t_ideal = (Q * L * F) / (24 * 1.5 * 1.0e9);
    // printf("t ideal = %f\n", t_ideal);
    // printf("t real = %f\n", t_real);
    // printf("p = %f%%\n", (t_ideal / t_real) * 100);
    printf("%f%\n", (t_ideal / t_real) * 100);
    return 0;
}

int ElbrusMatrixMulParallel(float *inp, float *wts, float *out, long Q, long L, long F) {
    timespec start, end, tdiff;
    omp_set_num_threads(16);
    if (Q >= F) {
        clock_gettime(CLOCK_THREAD_CPUTIME_ID, &start);
        #pragma omp parallel for
        {
            for (long q = 0; q < Q; q += 6)
                for (long f = 0; f < F; f += 8)
                    MulKernel48(inp + q * L, wts + f * L, out + f + q * F, L, F);
        }
        clock_gettime(CLOCK_THREAD_CPUTIME_ID, &end);
    }
    else {
        clock_gettime(CLOCK_THREAD_CPUTIME_ID, &start);
        #pragma omp parallel for
        {
            for (long f = 0; f < F; f += 8)
                for (long q = 0; q < Q; q += 6)
                    MulKernel48(inp + q * L, wts + f * L, out + f + q * F, L, F);
        }
        clock_gettime(CLOCK_THREAD_CPUTIME_ID, &end);
    }
    tdiff = diff(start, end);
    double t_real = static_cast<double>(tdiff.tv_sec) + static_cast<double>(tdiff.tv_nsec) / 1.0e9,
           t_ideal = (Q * L * F) / (24 * 1.5 * 1.0e9);
    // printf("t ideal = %f\n", t_ideal);
    // printf("t real = %f\n", t_real);
    // printf("p = %f%%\n", (t_ideal / t_real) * 100);
    printf("%f%\n", (t_ideal / t_real) * 100);
    return 0;
}