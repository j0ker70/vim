const int M = 1e9 + 7;

inline int add (int a, int b) {
    return (a + b < M) ? (a + b) : (a + b - M);
}

inline int sub (int a, int b) {
    return (a >= b) ? (a - b) : (a - b + M);
}

inline int mul (int a, int b) {
    return int((a * 1LL * b) % M);
}

inline int expo (int a, int b) {
    int ret = 1;
    b = (b == -1) ? (M - 2) : b;
    while (b != 0) {
        if (b & 1) {
            ret = mul(ret, a);
        }
        a = mul(a, a);
        b >>= 1;
    }
    return ret;
}
