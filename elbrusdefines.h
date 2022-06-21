#ifndef ELBRUSDEFINES_H
#define ELBRUSDEFINES_H

#define adds                        __builtin_e2k_qpfadds
#define hadds                       __builtin_e2k_qpfhadds
#define subs                        __builtin_e2k_qpfsubs
#define hsubs                       __builtin_e2k_qpfhsubs
#define addsubs                     __builtin_e2k_qpfaddsubs
#define maxs                        __builtin_e2k_qpfmaxs
#define mins                        __builtin_e2k_qpfmins
#define muls                        __builtin_e2k_qpfmuls

#define muladds(a, b, c)            adds(muls(a, b), c)
#define hadds4(a, b, c, d)          hadds(hadds(a, b), hadds(c, d))
#define hadds4bias(a, b, c, d, e)   adds(hadds4(a, b, c, d), e)
#define relu(x)                     maxs(zerosreg, x)

#define zeros                       (__v2di)((__v4sf){0.0, 0.0, 0.0, 0.0})
#define addr(out)                   *((__v2di*)(out))

#endif