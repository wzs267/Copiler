
# Simple Makefile to build a static library lib.a from sylib.c

CC ?= clang
AR ?= ar
CFLAGS ?= -O2 -Wall
ARFLAGS ?= rcs

SRCS := sylib.c
OBJS := lib.o
TARGET := lib.a

.PHONY: all clean

all: $(TARGET)

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) -c $< -o $@ -static

$(TARGET): $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

clean:
	rm -f $(OBJS) $(TARGET)

