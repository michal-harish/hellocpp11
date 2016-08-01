CC=g++
LIBS=-lrdkafka++
 
CFLAGS = $(pkg-config --libs --cflags $(LIBS)) -Wall -std=c++11 -g -c 
LFLAGS = $(pkg-config --libs --cflags $(LIBS)) -Wall -std=c++11 -g \

SRCDIR=src
BINDIR=bin
OBJDIR=$(BINDIR)/$(SRCDIR)

SRCS = $(wildcard $(SRCDIR)/*.cpp)
OBJS = $(patsubst $(SRCDIR)/%.cpp, $(OBJDIR)/%.o, $(SRCS))

all: $(BINDIR)/hellocpp11

$(BINDIR)/hellocpp11: $(OBJS) | mkdirs
	$(CC) $(OBJS) -o $(BINDIR)/hellocpp11 $(LFLAGS) $(LIBS)

$(OBJS): $(OBJDIR)/%.o: $(SRCDIR)/%.cpp | mkdirs
	$(CC) $(CFLAGS) $< -o $@ $(LIBS)
	$(CC) -MM -MF $(OBJDIR)/$*.d $<

-include $(OBJDIR)/*.d

.PHONY: mkdirs clean

mkdirs:
	mkdir -p $(OBJDIR)

clean:
	rm -rf $(BINDIR)

