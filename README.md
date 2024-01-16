# Learning OpenGL :)

## Commands to compile run and clean the output file

`make` compiles the source code and runs the executable. `make clean` cleans up the compiled file.

## OpenGL Setup Guide for Arch Linux

This guide will take you through the steps to set up a new OpenGL project on Arch Linux using GLFW for window management and input, and GLAD for OpenGL function loading.

## Update Your System

Ensure that your system's package list and installed packages are up-to-date:

```bash
sudo pacman -Syu
```

### Install Development Tools

Install the `base-devel` group of packages which includes the gcc compiler, make, and other development tools:

```bash
sudo pacman -S base-devel
```

### Install OpenGL Libraries

Mesa is the open-source implementation of OpenGL. Install it with:

```bash
sudo pacman -S mesa
```

### Install GLFW

GLFW is a library that allows the creation of windows with an OpenGL context and manages input. Install it with:

```bash
sudo pacman -S glfw
```

### Generate and Install GLAD

GLAD is used to load OpenGL functions. Generate the GLAD loader for your OpenGL version using the Glad web service (https://glad.dav1d.de/), then download and include the files in your project.

### Setup Your Project Structure

Create a new directory for your project with the following structure:

```plaintext
project_name/
│
├── include/
│   ├── glad/
│   │   └── glad.h
│   └── KHR/
│       └── khrplatform.h
│
├── src/
│   └── glad.c
│
├── main.cpp
└── Makefile
```

### Write Your Makefile

Create a `Makefile` in your project root that compiles your source code:

```makefile
CC=g++
CFLAGS=-Iinclude
LDFLAGS=-ldl -lglfw
TARGET=learning-opengl

all:
    $(CC) main.cpp src/glad.c $(CFLAGS) $(LDFLAGS) -o $(TARGET)
    ./$(TARGET)

clean:
    rm -f $(TARGET)
```

Remember to replace placeholder values such as `project_name` and `learning-opengl` with your actual project name and desired executable name. The `CC`, `CFLAGS`, `LDFLAGS`, and `TARGET` variables are set for compiling and linking, and should be adjusted if your setup differs.
