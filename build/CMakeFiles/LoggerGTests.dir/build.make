# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/prodrone/Documents/Anna/Logger

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/prodrone/Documents/Anna/Logger/build

# Include any dependencies generated for this target.
include CMakeFiles/LoggerGTests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LoggerGTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LoggerGTests.dir/flags.make

CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o: CMakeFiles/LoggerGTests.dir/flags.make
CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o: ../src/Logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prodrone/Documents/Anna/Logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o -c /home/prodrone/Documents/Anna/Logger/src/Logger.cpp

CMakeFiles/LoggerGTests.dir/src/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LoggerGTests.dir/src/Logger.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prodrone/Documents/Anna/Logger/src/Logger.cpp > CMakeFiles/LoggerGTests.dir/src/Logger.cpp.i

CMakeFiles/LoggerGTests.dir/src/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LoggerGTests.dir/src/Logger.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prodrone/Documents/Anna/Logger/src/Logger.cpp -o CMakeFiles/LoggerGTests.dir/src/Logger.cpp.s

CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o.requires:

.PHONY : CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o.requires

CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o.provides: CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o.requires
	$(MAKE) -f CMakeFiles/LoggerGTests.dir/build.make CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o.provides.build
.PHONY : CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o.provides

CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o.provides.build: CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o


CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o: CMakeFiles/LoggerGTests.dir/flags.make
CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o: ../tests/LoggerGTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/prodrone/Documents/Anna/Logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o -c /home/prodrone/Documents/Anna/Logger/tests/LoggerGTests.cpp

CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/prodrone/Documents/Anna/Logger/tests/LoggerGTests.cpp > CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.i

CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/prodrone/Documents/Anna/Logger/tests/LoggerGTests.cpp -o CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.s

CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o.requires:

.PHONY : CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o.requires

CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o.provides: CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o.requires
	$(MAKE) -f CMakeFiles/LoggerGTests.dir/build.make CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o.provides.build
.PHONY : CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o.provides

CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o.provides.build: CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o


# Object files for target LoggerGTests
LoggerGTests_OBJECTS = \
"CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o" \
"CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o"

# External object files for target LoggerGTests
LoggerGTests_EXTERNAL_OBJECTS =

LoggerGTests: CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o
LoggerGTests: CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o
LoggerGTests: CMakeFiles/LoggerGTests.dir/build.make
LoggerGTests: /usr/lib/libgtest.a
LoggerGTests: CMakeFiles/LoggerGTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/prodrone/Documents/Anna/Logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable LoggerGTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LoggerGTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LoggerGTests.dir/build: LoggerGTests

.PHONY : CMakeFiles/LoggerGTests.dir/build

CMakeFiles/LoggerGTests.dir/requires: CMakeFiles/LoggerGTests.dir/src/Logger.cpp.o.requires
CMakeFiles/LoggerGTests.dir/requires: CMakeFiles/LoggerGTests.dir/tests/LoggerGTests.cpp.o.requires

.PHONY : CMakeFiles/LoggerGTests.dir/requires

CMakeFiles/LoggerGTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LoggerGTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LoggerGTests.dir/clean

CMakeFiles/LoggerGTests.dir/depend:
	cd /home/prodrone/Documents/Anna/Logger/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/prodrone/Documents/Anna/Logger /home/prodrone/Documents/Anna/Logger /home/prodrone/Documents/Anna/Logger/build /home/prodrone/Documents/Anna/Logger/build /home/prodrone/Documents/Anna/Logger/build/CMakeFiles/LoggerGTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LoggerGTests.dir/depend

