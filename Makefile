CC=g++
CFLAGS = -Wall -std=c++11 -g -c
LFLAGS = -Wall -std=c++11 -g

OBJDIR=obj
SRCDIR=src
BINDIR=bin

SRCS = $(wildcard $(SRCDIR)/*.cpp)
OBJS = $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/%.o, $(SRCS))

all: $(BINDIR)/hellocpp11

$(BINDIR)/hellocpp11: $(OBJS) | mkdirs
	$(CC) $(OBJS) -o $(BINDIR)/hellocpp11 $(LFLAGS)

$(OBJS): $(OBJDIR)/%.o: $(SRCDIR)/%.cpp | mkdirs
	$(CC) $(CFLAGS) $< -o $@
	$(CC) -MM -MF $(OBJDIR)/$*.d $<

-include $(OBJDIR)/*.d

.PHONY: mkdirs clean

mkdirs:
	mkdir -p $(OBJDIR)
	mkdir -p $(BINDIR)

clean:
	rm -f $(OBJDIR)/*.o
	rm -rf $(BINDIR)/*.*

