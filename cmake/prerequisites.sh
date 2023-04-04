#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install gcc -y
sudo apt-get install g++ -y
sudo apt-get install gdb -y
sudo apt-get install make -y
sudo apt-get install cmake -y
sudo apt-get install git -y
sudo apt-get install doxygen -y
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
sudo apt-get install lcov -y
sudo apt-get install gcovr -y
sudo apt-get install ccache -y
sudo apt-get install cppcheck -y
sudo apt-get install clang-format -y
sudo apt-get install clang-tidy -y
sudo apt autoclean && sudo apt autoremove -y

code --install-extension franneck94.vscode-c-cpp-dev-extension-pack

# After installing, do Ctrl+Shift+P -> C/C++ Config: Generate C++ Config Files