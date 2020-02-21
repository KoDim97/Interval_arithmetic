//
// Created by Dmitry Kozlov on 2/21/2020.
//

#ifndef NUMBERS_REAL_H
#define NUMBERS_REAL_H

#include <math.h>
#include <algorithm>
#include <iostream>
#include "Ratio.h"

class Real {
public:
    Real() : _lb(0), _rb(0){};
    Real(Ratio num) : _lb(num), _rb(num){};
    Real(Ratio num_lb, Ratio num_rb) : _lb(num_lb), _rb(num_rb){};

    Real operator-() const;
    friend const Real operator+(const Real& lv, const Real& rv);
    friend const Real operator-(const Real& lv, const Real& rv);
    friend const Real operator*(const Real& lv, const Real& rv);
    friend const Real operator/(const Real& lv, const Real& rv);
    friend bool operator==(const Real &c1, const Real &c2);
    friend bool operator!=(const Real &c1, const Real &c2);
    friend bool operator>(const Real &c1, const Real &c2);
    friend bool operator<(const Real &c1, const Real &c2);
    friend bool operator>=(const Real &c1, const Real &c2);
    friend bool operator<=(const Real &c1, const Real &c2);
    friend std::ostream& operator<< (std::ostream &out, const Real &point);
private:
   Ratio _lb, _rb; //left and right bounds of interval
};


#endif //NUMBERS_REAL_H
