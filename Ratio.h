//
// Created by Dmitry Kozlov on 2/21/2020.
//

#ifndef NUMBERS_RATIO_H
#define NUMBERS_RATIO_H

#include <iostream>
#include <algorithm> //for gcd
#include <cassert>

class Ratio {
public:
    Ratio(int n = 0, int d = 1);
    Ratio(const Ratio& rv);
    Ratio& operator=(const Ratio& rv);

    Ratio operator-() const ;
    friend const Ratio operator+(const Ratio& lv, const Ratio& rv);
    friend const Ratio operator-(const Ratio& lv, const Ratio& rv);
    friend const Ratio operator*(const Ratio& lv, const Ratio& rv);
    friend const Ratio operator/(const Ratio& lv, const Ratio& rv);
    friend bool operator==(const Ratio &c1, const Ratio &c2);
    friend bool operator!=(const Ratio &c1, const Ratio &c2);
    friend bool operator>(const Ratio &c1, const Ratio &c2);
    friend bool operator<(const Ratio &c1, const Ratio &c2);
    friend bool operator>=(const Ratio &c1, const Ratio &c2);
    friend bool operator<=(const Ratio &c1, const Ratio &c2);
    friend std::ostream& operator<< (std::ostream &out, const Ratio &point);
private:
    int n, d; //numerator and denominator. Only numerator could have minus
    void reduce();
};

#endif //NUMBERS_RATIO_H

