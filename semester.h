#ifndef __SEMESTER_
#define __SEMESTER_

#include <iostream>

enum class Semester {FALL, SEMESTER, SUMMER, SPRING};

std::ostream& operator<<(std::ostream& ost, const Semester& semester);

Semester load_semester (std::istream& ist);

#endif
