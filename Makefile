CC=g++
CFLAGS = -Wall -std=c++11 -g -c
LFLAGS = -Wall -std=c++11 -g

SRCS= main.cpp func.cpp

DEPS= func.h

OBJDIR=obj
_OBJS= $(SRCS:.cpp=.o)
OBJS= $(patsubst %,$(OBJDIR)/%,$(_OBJS))

BINDIR=bin
$(OBJDIR)/hellocpp11: $(OBJS) | $(BINDIR)
	$(CC) $(OBJS) -o $(BINDIR)/hellocpp11 $(LFLAGS)

$(OBJS): | $(OBJDIR)
$(OBJDIR):
	mkdir $(OBJDIR)

$(BINDIR):
	mkdir -p bin

$(OBJDIR)/%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) $< -o $@

.PHONY: clean

clean:
	rm -f $(OBJDIR)/*.o
	rm -rf $(BINDIR)/*.*
