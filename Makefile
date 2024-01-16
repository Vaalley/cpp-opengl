CC=g++
CFLAGS=-Iinclude
LDFLAGS=-ldl -lglfw
TARGET=learning-opengl

all:
	sudo $(CC) main.cpp src/glad.c $(CFLAGS) $(LDFLAGS) -o $(TARGET)
	./$(TARGET)

clean:
	sudo rm -f $(TARGET)