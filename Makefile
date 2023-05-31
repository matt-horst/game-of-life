CC = g++
CFLAGS = -Wall -pedantic
LDFLAGS = -Wall -pedantic
SRCDIR = src
OBJDIR = obj
BINDIR = bin
BIN = $(BINDIR)/gameoflife

all:
	$(CC) $(CFLAGS) -o $(OBJDIR)/main.o -c $(SRCDIR)/main.cpp
	$(CC) $(LDFLAGS) -o $(BIN) $(OBJDIR)/main.o

dirs:
	mkdir -p $(OBJDIR)
	mkdir -p $(BINDIR)

clean:
	$(RM) $(OBJDIR)/* $(BINDIR)/*
