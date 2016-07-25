CC=g++
CFLAGS = -Wall -std=c++11 -g -c
LFLAGS = -Wall -std=c++11 -g

OBJDIR=obj
SRCDIR=src
BINDIR=bin

SRCS = $(wildcard $(SRCDIR)/*.cpp)
OBJS = $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/%.o, $(SRCS))

all: $(BINDIR)/hellocpp11

$(BINDIR)/hellocpp11: $(OBJS) | dirs
	$(CC) $(OBJS) -o $(BINDIR)/hellocpp11 $(LFLAGS)

$(OBJS): $(OBJDIR)/%.o: $(SRCDIR)/%.cpp | dirs
	$(CC) $(CFLAGS) $< -o $@
	$(CC) -MM -MF $(OBJDIR)/$*.d $<

-include $(OBJDIR)/*.d

.PHONY: clean build

dirs:
	mkdir -p $(OBJDIR)
	mkdir -p $(BINDIR)

clean:
	rm -f $(OBJDIR)/*.o
	rm -rf $(BINDIR)/*.*

