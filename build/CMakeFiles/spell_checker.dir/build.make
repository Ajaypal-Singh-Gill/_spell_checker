# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.22.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.22.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ajaypalgill/desktop/_spellchecker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ajaypalgill/desktop/_spellchecker/build

# Include any dependencies generated for this target.
include CMakeFiles/spell_checker.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/spell_checker.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/spell_checker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/spell_checker.dir/flags.make

CMakeFiles/spell_checker.dir/main.cpp.o: CMakeFiles/spell_checker.dir/flags.make
CMakeFiles/spell_checker.dir/main.cpp.o: ../main.cpp
CMakeFiles/spell_checker.dir/main.cpp.o: CMakeFiles/spell_checker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ajaypalgill/desktop/_spellchecker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/spell_checker.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/spell_checker.dir/main.cpp.o -MF CMakeFiles/spell_checker.dir/main.cpp.o.d -o CMakeFiles/spell_checker.dir/main.cpp.o -c /Users/ajaypalgill/desktop/_spellchecker/main.cpp

CMakeFiles/spell_checker.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spell_checker.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ajaypalgill/desktop/_spellchecker/main.cpp > CMakeFiles/spell_checker.dir/main.cpp.i

CMakeFiles/spell_checker.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spell_checker.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ajaypalgill/desktop/_spellchecker/main.cpp -o CMakeFiles/spell_checker.dir/main.cpp.s

# Object files for target spell_checker
spell_checker_OBJECTS = \
"CMakeFiles/spell_checker.dir/main.cpp.o"

# External object files for target spell_checker
spell_checker_EXTERNAL_OBJECTS =

spell_checker: CMakeFiles/spell_checker.dir/main.cpp.o
spell_checker: CMakeFiles/spell_checker.dir/build.make
spell_checker: /opt/homebrew/lib/libboost_system-mt.dylib
spell_checker: /opt/homebrew/lib/libboost_filesystem-mt.dylib
spell_checker: CMakeFiles/spell_checker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ajaypalgill/desktop/_spellchecker/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable spell_checker"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spell_checker.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/spell_checker.dir/build: spell_checker
.PHONY : CMakeFiles/spell_checker.dir/build

CMakeFiles/spell_checker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/spell_checker.dir/cmake_clean.cmake
.PHONY : CMakeFiles/spell_checker.dir/clean

CMakeFiles/spell_checker.dir/depend:
	cd /Users/ajaypalgill/desktop/_spellchecker/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ajaypalgill/desktop/_spellchecker /Users/ajaypalgill/desktop/_spellchecker /Users/ajaypalgill/desktop/_spellchecker/build /Users/ajaypalgill/desktop/_spellchecker/build /Users/ajaypalgill/desktop/_spellchecker/build/CMakeFiles/spell_checker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/spell_checker.dir/depend

