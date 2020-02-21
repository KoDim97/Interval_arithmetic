#include <iostream>
#include "Ratio.h"
#include "Real.h"

int main() {
    std::cout << "Testing Ratio" << std::endl;
    Ratio r1,  r2(1), r3(3,4), r4(1, 4);
    std::cout << r1 << ' ' << r2 << ' ' << r3 << std::endl;
    assert(r1 + r2 == 1);
    assert(r3 + r4 == 1);
    assert(r2 > r3);
    assert(r3 * r4 == Ratio(3, 16));
    assert(r2 + r4 == Ratio(5,4));
    assert(r3 / r4 == 3);
    Real r5(r4, r3);
    Real r6(Ratio(1,2), Ratio(1));
    std::cout << r5 << " - " << r6 << " = " << r5 - r6 << std::endl;
    std::cout << r5 << " * " << r6 << " = " << r5 * r6 << std::endl;
    std::cout << r5 << " / " << r6 << " = " << r5 / r6 << std::endl;
    std::cout << "-" << r6 << " = " << -r6 << std::endl;
    return 0;
}