# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.5\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Studying\Politech\Sem6\I1cow\Numbers

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Studying\Politech\Sem6\I1cow\Numbers\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Numbers.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Numbers.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Numbers.dir/flags.make

CMakeFiles/Numbers.dir/main.cpp.obj: CMakeFiles/Numbers.dir/flags.make
CMakeFiles/Numbers.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Studying\Politech\Sem6\I1cow\Numbers\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Numbers.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Numbers.dir\main.cpp.obj -c C:\Studying\Politech\Sem6\I1cow\Numbers\main.cpp

CMakeFiles/Numbers.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Numbers.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Studying\Politech\Sem6\I1cow\Numbers\main.cpp > CMakeFiles\Numbers.dir\main.cpp.i

CMakeFiles/Numbers.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Numbers.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Studying\Politech\Sem6\I1cow\Numbers\main.cpp -o CMakeFiles\Numbers.dir\main.cpp.s

CMakeFiles/Numbers.dir/Ratio.cpp.obj: CMakeFiles/Numbers.dir/flags.make
CMakeFiles/Numbers.dir/Ratio.cpp.obj: ../Ratio.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Studying\Politech\Sem6\I1cow\Numbers\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Numbers.dir/Ratio.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Numbers.dir\Ratio.cpp.obj -c C:\Studying\Politech\Sem6\I1cow\Numbers\Ratio.cpp

CMakeFiles/Numbers.dir/Ratio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Numbers.dir/Ratio.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Studying\Politech\Sem6\I1cow\Numbers\Ratio.cpp > CMakeFiles\Numbers.dir\Ratio.cpp.i

CMakeFiles/Numbers.dir/Ratio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Numbers.dir/Ratio.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Studying\Politech\Sem6\I1cow\Numbers\Ratio.cpp -o CMakeFiles\Numbers.dir\Ratio.cpp.s

CMakeFiles/Numbers.dir/Real.cpp.obj: CMakeFiles/Numbers.dir/flags.make
CMakeFiles/Numbers.dir/Real.cpp.obj: ../Real.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Studying\Politech\Sem6\I1cow\Numbers\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Numbers.dir/Real.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Numbers.dir\Real.cpp.obj -c C:\Studying\Politech\Sem6\I1cow\Numbers\Real.cpp

CMakeFiles/Numbers.dir/Real.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Numbers.dir/Real.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Studying\Politech\Sem6\I1cow\Numbers\Real.cpp > CMakeFiles\Numbers.dir\Real.cpp.i

CMakeFiles/Numbers.dir/Real.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Numbers.dir/Real.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Studying\Politech\Sem6\I1cow\Numbers\Real.cpp -o CMakeFiles\Numbers.dir\Real.cpp.s

# Object files for target Numbers
Numbers_OBJECTS = \
"CMakeFiles/Numbers.dir/main.cpp.obj" \
"CMakeFiles/Numbers.dir/Ratio.cpp.obj" \
"CMakeFiles/Numbers.dir/Real.cpp.obj"

# External object files for target Numbers
Numbers_EXTERNAL_OBJECTS =

Numbers.exe: CMakeFiles/Numbers.dir/main.cpp.obj
Numbers.exe: CMakeFiles/Numbers.dir/Ratio.cpp.obj
Numbers.exe: CMakeFiles/Numbers.dir/Real.cpp.obj
Numbers.exe: CMakeFiles/Numbers.dir/build.make
Numbers.exe: CMakeFiles/Numbers.dir/linklibs.rsp
Numbers.exe: CMakeFiles/Numbers.dir/objects1.rsp
Numbers.exe: CMakeFiles/Numbers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Studying\Politech\Sem6\I1cow\Numbers\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable Numbers.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Numbers.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Numbers.dir/build: Numbers.exe

.PHONY : CMakeFiles/Numbers.dir/build

CMakeFiles/Numbers.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Numbers.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Numbers.dir/clean

CMakeFiles/Numbers.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Studying\Politech\Sem6\I1cow\Numbers C:\Studying\Politech\Sem6\I1cow\Numbers C:\Studying\Politech\Sem6\I1cow\Numbers\cmake-build-debug C:\Studying\Politech\Sem6\I1cow\Numbers\cmake-build-debug C:\Studying\Politech\Sem6\I1cow\Numbers\cmake-build-debug\CMakeFiles\Numbers.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Numbers.dir/depend
