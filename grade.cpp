
#include "grade.h"
#include <iostream>

std::ostream& operator<<(std::ostream& ost, const Grade& grade) {
    ost << ((grade == Grade::A) ? "A" :
           (grade == Grade::B) ? "B" : 
           (grade == Grade::C) ? "C" : 
           (grade == Grade::D) ? "D" : 
           (grade == Grade::F) ? "F" : 
           (grade == Grade::X) ? "In progress" : 
           "Incomplete");
    return ost;
}




