# Learning OpenGL :)

## Command to compile and run

`make` and `make clean` clean up the compiled files

## How to setup OpenGL

### Install dependencies

```shell
sudo apt-get update
sudo apt-get install libglu1-mesa-dev freeglut3-dev mesa-common-dev
sudo apt-get install libx11-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev
```

### Setup GLFW

```shell
cd /usr/local/lib/
git clone https://github.com/glfw/glfw.git
cd glfw
cmake .
make
sudo make install
```

### Setup GLAD

- Go here: <https://glad.dav1d.de/>
- Select version 3.3 or higher
- Select Core profile
- Click on Generate and download the zip file
- Copy the folders inside include (glad and KHR) into your include(s) directory: `cp -R include/\* /usr/include/`
- Copy the file glad.c inside the src folder to your current working directory.
