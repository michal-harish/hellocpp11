CC=g++
CFLAGS=-std=c++11 -Wall

SRCS= main.cpp func.cpp

DEPS= func.h

OBJDIR=obj
_OBJS= $(SRCS:.cpp=.o)
OBJS= $(patsubst %,$(OBJDIR)/%,$(_OBJS))

BINDIR=bin
$(OBJDIR)/hellocpp11: $(OBJS)
	mkdir -p bin
	$(CC) $(OBJS) -o $(BINDIR)/hellocpp11 $(CFLAGS)

$(OBJS): | $(OBJDIR)
$(OBJDIR):
	mkdir $(OBJDIR)


$(OBJDIR)/%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: clean

clean:
	rm -f $(OBJDIR)/*.o
	rm -rf $(BINDIR)/*.*
