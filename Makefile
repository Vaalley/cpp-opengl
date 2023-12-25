CC=g++
CFLAGS=-ldl -lglfw
TARGET=learning-opengl

all:
	sudo $(CC) learning-opengl.cpp glad.c $(CFLAGS) -o $(TARGET)
	sudo ./$(TARGET)

clean:
	sudo rm -f $(TARGET)