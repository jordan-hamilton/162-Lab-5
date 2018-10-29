# Source: http://web.engr.oregonstate.edu/~rookert/cs162/03.mp4

CXX = g++
CXXFLAGS = -std=c++0x
CXXFLAGS += -Wall
CXXFLAGS += -pedantic-errors
CXXFLAGS += -g

OBJS = main.o Menu.o recursiveFunctions.o
SRCS = main.cpp Menu.cpp recursiveFunctions.cpp
HEADERS = Menu.hpp recursiveFunctions.hpp

lab5: $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o lab5

$(OBJS): $(SRCS) $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $(@:.o=.cpp)

clean:
	rm *.o lab5
