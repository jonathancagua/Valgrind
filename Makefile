CC=gcc
CFLAGS=-Wall -g
LDFLAGS=

SRC=hello.c
OBJ=$(SRC:.c=.o)
EXECUTABLE=hello

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJ)

