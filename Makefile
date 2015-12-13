VERSION = 3.02
CC      = /usr/bin/gcc
CFLAGS  = -Wall -g  -DVERSION=\"$(VERSION)\"
LDFLAGS = -lm 

OBJ = biab2mma.o biabread.o

biab2mma: $(OBJ)
	$(CC) $(CFLAGS) -o biab2mma $(OBJ) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $<
