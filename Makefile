CXXFLAGS += --std=c++17
GTKFLAGS = `/usr/bin/pkg-config gtkmm-3.0 --cflags --libs`

all: smart

debug: CXXFLAGS += -g
debug: smart

smart: main.o mainwin.o entrydialog.o person.o student.o parent.o section.o course.o subject.o semester.o grade.o transcript.o teacher.o *.h
	$(CXX) $(CXXFLAGS) main.o mainwin.o entrydialog.o person.o student.o parent.o section.o course.o subject.o semester.o grade.o transcript.o teacher.o  $(GTKFLAGS) -o smart

test: test.o person.o student.o parent.o section.o course.o subject.o semester.o rade.o transcript.o teacher.o   *.h
	$(CXX) $(CXXFLAGS) test.o person.o student.o parent.o section.o course.o subject.o semester.o grade.o transcript.o teacher.o  $(GTKFLAGS)  -o test


main.o: main.cpp *.h
	$(CXX) $(CXXFLAGS) -c main.cpp $(GTKFLAGS) -o main.o

mainwin.o: mainwin.cpp *.h
	$(CXX) $(CXXFLAGS) -c mainwin.cpp $(GTKFLAGS) -o mainwin.o

entrydialog.o: entrydialog.cpp *.h
	$(CXX) $(CXXFLAGS) -c entrydialog.cpp $(GTKFLAGS) -o entrydialog.o


test.o: test.cpp *.h
	$(CXX) $(CXXFLAGS) -c test.cpp -o test.o


person.o: person.cpp *.h
	-$(CXX) $(CXXFLAGS) -c person.cpp -o person.o

student.o: student.cpp *.h
	-$(CXX) $(CXXFLAGS) -c student.cpp -o student.o

parent.o: parent.cpp *.h
	$(CXX) $(CXXFLAGS) -c parent.cpp -o parent.o


semester.o: semester.cpp *.h
	$(CXX) $(CXXFLAGS) -c semester.cpp -o semester.o

subject.o: subject.cpp *.h
	$(CXX) $(CXXFLAGS) -c subject.cpp -o subject.o

course.o: course.cpp *.h
	$(CXX) $(CXXFLAGS) -c course.cpp -o course.o

section.o: section.cpp *.h
	$(CXX) $(CXXFLAGS) -c section.cpp -o section.o

grade.o: grade.cpp *.h
	$(CXX) $(CXXFLAGS) -c grade.cpp -o grade.o   

transcript.o: transcript.cpp *.h
	$(CXX) $(CXXFLAGS) -c transcript.cpp -o transcript.o 
	
teacher.o: teacher.cpp *.h
	$(CXX) $(CXXFLAGS) -c teacher.cpp -o teacher.o 
	




clean:
	rm -f *.o *.gch *~ a.out smart 
