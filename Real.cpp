//
// Created by Dmitry Kozlov on 2/21/2020.
//

#include "Real.h"

Real Real::operator- () const {
    return Real(-_rb, -_lb);
}

const Real operator+ (const Real &lv, const Real &rv) {
    Real t;
    t._lb = lv._lb + rv._lb;
    t._rb = lv._rb + rv._rb;
    return t;
}
const Real operator-(const Real &lv, const Real &rv) {
    if (lv == rv){
        return Real(0);
    }
    Real t;
    t._lb = lv._lb - rv._rb;
    t._rb = lv._rb - rv._lb;
    return t;
}
const Real operator*(const Real &lv, const Real &rv) {
    Real t;
    if (lv == rv){ // lv and rv are the same number
        if (lv._lb > Ratio(0) || lv._rb < Ratio(0)){ // _lb and _rb have the same signs
            t._lb = std::min(lv._lb*lv._lb, lv._rb*lv._rb);
            t._rb = std::max(lv._lb*lv._lb, lv._rb*lv._rb);
        } else{ // _lb <= 0 <= _ub
            t._lb = Ratio(0);
            t._rb = std::max(lv._lb*lv._lb, lv._rb*lv._rb);
        }
    } else{
        Ratio temp1 = lv._lb*rv._lb;
        Ratio temp2 = lv._lb*rv._rb;
        Ratio temp3 = lv._rb*rv._lb;
        Ratio temp4 = lv._rb*rv._rb;
        t._lb = std::min(std::min(lv._lb*rv._lb, lv._lb*rv._rb), std::min(lv._rb*rv._lb, lv._rb*rv._rb));
        t._rb = std::max(std::max(lv._lb*rv._lb, lv._lb*rv._rb), std::max(lv._rb*rv._lb, lv._rb*rv._rb));
    }
    return t;
}

const Real operator/ (const Real &lv, const Real &rv) {

    assert(!(rv._lb <= 0 && rv._rb >= 0));
    if (lv == rv){
        return Real(1);
    }
    Real t;
    t._lb = Ratio(1) / rv._rb;
    t._rb = Ratio(1) / rv._lb;
    return lv * t;
}

bool operator==(const Real &c1, const Real &c2) {
    return (c1._lb == c2._lb && c1._rb == c2._rb);
}

bool operator!= (const Real &c1, const Real &c2) {
    return !(c1 == c2);
}

std::ostream& operator<< (std::ostream &out, const Real &interval){
    out << '[' << interval._lb << ", "  << interval._rb << ']';
    return out;
}