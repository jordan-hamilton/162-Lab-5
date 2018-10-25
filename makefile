# Source: http://web.engr.oregonstate.edu/~rookert/cs162/03.mp4

CXX = g++
CXXFLAGS = -std=c++0x
CXXFLAGS += -Wall
CXXFLAGS += -pedantic-errors
CXXFLAGS += -g

OBJS = main.o Building.o Instructor.o Menu.o Person.o Student.o University.o
SRCS = main.cpp  Building.cpp Instructor.cpp Menu.cpp Person.cpp Student.cpp University.cpp
HEADERS = Building.cpp Instructor.cpp Menu.hpp Person.cpp Student.cpp University.cpp

lab5: $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o lab5

$(OBJS): $(SRCS) $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $(@:.o=.cpp)

clean:
	rm *.o lab5
