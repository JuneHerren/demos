# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.5/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.5/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mbp/demos/cmake-demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mbp/demos/cmake-demo/build

# Include any dependencies generated for this target.
include src/CMakeFiles/DEMO.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/DEMO.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/DEMO.dir/flags.make

src/CMakeFiles/DEMO.dir/demo.cpp.o: src/CMakeFiles/DEMO.dir/flags.make
src/CMakeFiles/DEMO.dir/demo.cpp.o: ../src/demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mbp/demos/cmake-demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/DEMO.dir/demo.cpp.o"
	cd /Users/mbp/demos/cmake-demo/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DEMO.dir/demo.cpp.o -c /Users/mbp/demos/cmake-demo/src/demo.cpp

src/CMakeFiles/DEMO.dir/demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DEMO.dir/demo.cpp.i"
	cd /Users/mbp/demos/cmake-demo/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mbp/demos/cmake-demo/src/demo.cpp > CMakeFiles/DEMO.dir/demo.cpp.i

src/CMakeFiles/DEMO.dir/demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DEMO.dir/demo.cpp.s"
	cd /Users/mbp/demos/cmake-demo/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mbp/demos/cmake-demo/src/demo.cpp -o CMakeFiles/DEMO.dir/demo.cpp.s

# Object files for target DEMO
DEMO_OBJECTS = \
"CMakeFiles/DEMO.dir/demo.cpp.o"

# External object files for target DEMO
DEMO_EXTERNAL_OBJECTS =

src/libDEMO.a: src/CMakeFiles/DEMO.dir/demo.cpp.o
src/libDEMO.a: src/CMakeFiles/DEMO.dir/build.make
src/libDEMO.a: src/CMakeFiles/DEMO.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mbp/demos/cmake-demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libDEMO.a"
	cd /Users/mbp/demos/cmake-demo/build/src && $(CMAKE_COMMAND) -P CMakeFiles/DEMO.dir/cmake_clean_target.cmake
	cd /Users/mbp/demos/cmake-demo/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DEMO.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/DEMO.dir/build: src/libDEMO.a

.PHONY : src/CMakeFiles/DEMO.dir/build

src/CMakeFiles/DEMO.dir/clean:
	cd /Users/mbp/demos/cmake-demo/build/src && $(CMAKE_COMMAND) -P CMakeFiles/DEMO.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/DEMO.dir/clean

src/CMakeFiles/DEMO.dir/depend:
	cd /Users/mbp/demos/cmake-demo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mbp/demos/cmake-demo /Users/mbp/demos/cmake-demo/src /Users/mbp/demos/cmake-demo/build /Users/mbp/demos/cmake-demo/build/src /Users/mbp/demos/cmake-demo/build/src/CMakeFiles/DEMO.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/DEMO.dir/depend
