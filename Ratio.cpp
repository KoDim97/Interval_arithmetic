//
// Created by Dmitry Kozlov on 2/21/2020.
//

#include "Ratio.h"

int lcm(int a, int b) { // least common multiple
    return (a*b)/std::__gcd(a,b);
}

Ratio::Ratio(int n, int d) {
    this->n = d < 0 ? -n : n;
    this->d = d < 0 ? -d : d;
    reduce();
    assert(d != 0);
}

Ratio::Ratio(const Ratio &rv): n(rv.n), d(rv.d) {}

Ratio& Ratio::operator= (const Ratio &rv) {
    if (this == &rv) {
        return *this;
    }
    n = rv.n;
    d = rv.d;
    return *this;
}

Ratio Ratio::operator- () const {
    return Ratio(-n, d);
}

const Ratio operator+ (const Ratio &lv, const Ratio &rv) {
    Ratio t;
    t.n = lv.n * rv.d + lv.d * rv.n;
    t.d = lv.d * rv.d;
    t.reduce();
    return t;
}
const Ratio operator-(const Ratio &lv, const Ratio &rv) {
    Ratio t;
    t.n = lv.n * rv.d - lv.d * rv.n;
    t.d = lv.d * rv.d;
    t.reduce();
    return t;
}

const Ratio operator*(const Ratio &lv, const Ratio &rv) {
    Ratio t;
    t.n = lv.n * rv.n;
    t.d = lv.d * rv.d;
    t.reduce();
    return t;
}

const Ratio operator/ (const Ratio &lv, const Ratio &rv) {
    Ratio t;
    assert(rv.n != 0);
    t.n = lv.n * rv.d;
    t.d = lv.d * rv.n;
    t.reduce();
    return t;
}

bool operator==(const Ratio &c1, const Ratio &c2) {
    return (c1.n == c2.n && c1.d == c2.d);
}

bool operator!= (const Ratio &c1, const Ratio &c2) {
    return !(c1 == c2);
}

bool operator< (Ratio const &c1, Ratio const &c2) {
    int _lcm = lcm(c1.d, c2.d);
    int ratio1 = _lcm / c1.d;
    int ratio2 = _lcm / c2.d;
    return (c1.n * ratio1 < c2.n * ratio2);
}

bool operator> (const Ratio &c1, const Ratio &c2) {
    return c2 < c1;
}

bool operator<=(const Ratio &c1, const Ratio &c2) {
    return !(c1 > c2);
}

bool operator>= (const Ratio &c1, const Ratio &c2) {
    return !(c1 < c2);
}

std::ostream& operator<< (std::ostream &out, const Ratio &num){
    out << num.n << '/' << num.d;
    return out;
}

void Ratio::reduce() {
    int _n = n < 0 ? -n : n;
    int gcd = std::__gcd(_n, d);
    if (gcd != 0) {
        n /= gcd;
        d /= gcd;
    }
}
