# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/antoniopucciarelli/Documents/FORTRAN/aeroHS_FORTRAN

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/antoniopucciarelli/Documents/FORTRAN/aeroHS_FORTRAN

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/antoniopucciarelli/Documents/FORTRAN/aeroHS_FORTRAN/CMakeFiles /home/antoniopucciarelli/Documents/FORTRAN/aeroHS_FORTRAN/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/antoniopucciarelli/Documents/FORTRAN/aeroHS_FORTRAN/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named aeroHS

# Build rule for target.
aeroHS: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 aeroHS
.PHONY : aeroHS

# fast build rule for target.
aeroHS/fast:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/build
.PHONY : aeroHS/fast

src/aeroHS.o: src/aeroHS.f90.o

.PHONY : src/aeroHS.o

# target to build an object file
src/aeroHS.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/aeroHS.f90.o
.PHONY : src/aeroHS.f90.o

src/aeroHS.i: src/aeroHS.f90.i

.PHONY : src/aeroHS.i

# target to preprocess a source file
src/aeroHS.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/aeroHS.f90.i
.PHONY : src/aeroHS.f90.i

src/aeroHS.s: src/aeroHS.f90.s

.PHONY : src/aeroHS.s

# target to generate assembly for a file
src/aeroHS.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/aeroHS.f90.s
.PHONY : src/aeroHS.f90.s

src/modules/AIRFOIL_object.o: src/modules/AIRFOIL_object.f90.o

.PHONY : src/modules/AIRFOIL_object.o

# target to build an object file
src/modules/AIRFOIL_object.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/AIRFOIL_object.f90.o
.PHONY : src/modules/AIRFOIL_object.f90.o

src/modules/AIRFOIL_object.i: src/modules/AIRFOIL_object.f90.i

.PHONY : src/modules/AIRFOIL_object.i

# target to preprocess a source file
src/modules/AIRFOIL_object.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/AIRFOIL_object.f90.i
.PHONY : src/modules/AIRFOIL_object.f90.i

src/modules/AIRFOIL_object.s: src/modules/AIRFOIL_object.f90.s

.PHONY : src/modules/AIRFOIL_object.s

# target to generate assembly for a file
src/modules/AIRFOIL_object.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/AIRFOIL_object.f90.s
.PHONY : src/modules/AIRFOIL_object.f90.s

src/modules/MEANline_object.o: src/modules/MEANline_object.f90.o

.PHONY : src/modules/MEANline_object.o

# target to build an object file
src/modules/MEANline_object.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/MEANline_object.f90.o
.PHONY : src/modules/MEANline_object.f90.o

src/modules/MEANline_object.i: src/modules/MEANline_object.f90.i

.PHONY : src/modules/MEANline_object.i

# target to preprocess a source file
src/modules/MEANline_object.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/MEANline_object.f90.i
.PHONY : src/modules/MEANline_object.f90.i

src/modules/MEANline_object.s: src/modules/MEANline_object.f90.s

.PHONY : src/modules/MEANline_object.s

# target to generate assembly for a file
src/modules/MEANline_object.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/MEANline_object.f90.s
.PHONY : src/modules/MEANline_object.f90.s

src/modules/PANEL_object.o: src/modules/PANEL_object.f90.o

.PHONY : src/modules/PANEL_object.o

# target to build an object file
src/modules/PANEL_object.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/PANEL_object.f90.o
.PHONY : src/modules/PANEL_object.f90.o

src/modules/PANEL_object.i: src/modules/PANEL_object.f90.i

.PHONY : src/modules/PANEL_object.i

# target to preprocess a source file
src/modules/PANEL_object.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/PANEL_object.f90.i
.PHONY : src/modules/PANEL_object.f90.i

src/modules/PANEL_object.s: src/modules/PANEL_object.f90.s

.PHONY : src/modules/PANEL_object.s

# target to generate assembly for a file
src/modules/PANEL_object.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/PANEL_object.f90.s
.PHONY : src/modules/PANEL_object.f90.s

src/modules/airfoilgenerator.o: src/modules/airfoilgenerator.f90.o

.PHONY : src/modules/airfoilgenerator.o

# target to build an object file
src/modules/airfoilgenerator.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/airfoilgenerator.f90.o
.PHONY : src/modules/airfoilgenerator.f90.o

src/modules/airfoilgenerator.i: src/modules/airfoilgenerator.f90.i

.PHONY : src/modules/airfoilgenerator.i

# target to preprocess a source file
src/modules/airfoilgenerator.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/airfoilgenerator.f90.i
.PHONY : src/modules/airfoilgenerator.f90.i

src/modules/airfoilgenerator.s: src/modules/airfoilgenerator.f90.s

.PHONY : src/modules/airfoilgenerator.s

# target to generate assembly for a file
src/modules/airfoilgenerator.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/airfoilgenerator.f90.s
.PHONY : src/modules/airfoilgenerator.f90.s

src/modules/cp_module.o: src/modules/cp_module.f90.o

.PHONY : src/modules/cp_module.o

# target to build an object file
src/modules/cp_module.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/cp_module.f90.o
.PHONY : src/modules/cp_module.f90.o

src/modules/cp_module.i: src/modules/cp_module.f90.i

.PHONY : src/modules/cp_module.i

# target to preprocess a source file
src/modules/cp_module.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/cp_module.f90.i
.PHONY : src/modules/cp_module.f90.i

src/modules/cp_module.s: src/modules/cp_module.f90.s

.PHONY : src/modules/cp_module.s

# target to generate assembly for a file
src/modules/cp_module.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/cp_module.f90.s
.PHONY : src/modules/cp_module.f90.s

src/modules/discretization_module.o: src/modules/discretization_module.f90.o

.PHONY : src/modules/discretization_module.o

# target to build an object file
src/modules/discretization_module.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/discretization_module.f90.o
.PHONY : src/modules/discretization_module.f90.o

src/modules/discretization_module.i: src/modules/discretization_module.f90.i

.PHONY : src/modules/discretization_module.i

# target to preprocess a source file
src/modules/discretization_module.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/discretization_module.f90.i
.PHONY : src/modules/discretization_module.f90.i

src/modules/discretization_module.s: src/modules/discretization_module.f90.s

.PHONY : src/modules/discretization_module.s

# target to generate assembly for a file
src/modules/discretization_module.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/discretization_module.f90.s
.PHONY : src/modules/discretization_module.f90.s

src/modules/foul.o: src/modules/foul.f90.o

.PHONY : src/modules/foul.o

# target to build an object file
src/modules/foul.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/foul.f90.o
.PHONY : src/modules/foul.f90.o

src/modules/foul.i: src/modules/foul.f90.i

.PHONY : src/modules/foul.i

# target to preprocess a source file
src/modules/foul.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/foul.f90.i
.PHONY : src/modules/foul.f90.i

src/modules/foul.s: src/modules/foul.f90.s

.PHONY : src/modules/foul.s

# target to generate assembly for a file
src/modules/foul.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/foul.f90.s
.PHONY : src/modules/foul.f90.s

src/modules/math_module.o: src/modules/math_module.f90.o

.PHONY : src/modules/math_module.o

# target to build an object file
src/modules/math_module.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/math_module.f90.o
.PHONY : src/modules/math_module.f90.o

src/modules/math_module.i: src/modules/math_module.f90.i

.PHONY : src/modules/math_module.i

# target to preprocess a source file
src/modules/math_module.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/math_module.f90.i
.PHONY : src/modules/math_module.f90.i

src/modules/math_module.s: src/modules/math_module.f90.s

.PHONY : src/modules/math_module.s

# target to generate assembly for a file
src/modules/math_module.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/math_module.f90.s
.PHONY : src/modules/math_module.f90.s

src/modules/multi_cp.o: src/modules/multi_cp.f90.o

.PHONY : src/modules/multi_cp.o

# target to build an object file
src/modules/multi_cp.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/multi_cp.f90.o
.PHONY : src/modules/multi_cp.f90.o

src/modules/multi_cp.i: src/modules/multi_cp.f90.i

.PHONY : src/modules/multi_cp.i

# target to preprocess a source file
src/modules/multi_cp.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/multi_cp.f90.i
.PHONY : src/modules/multi_cp.f90.i

src/modules/multi_cp.s: src/modules/multi_cp.f90.s

.PHONY : src/modules/multi_cp.s

# target to generate assembly for a file
src/modules/multi_cp.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/multi_cp.f90.s
.PHONY : src/modules/multi_cp.f90.s

src/modules/plot.o: src/modules/plot.f90.o

.PHONY : src/modules/plot.o

# target to build an object file
src/modules/plot.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/plot.f90.o
.PHONY : src/modules/plot.f90.o

src/modules/plot.i: src/modules/plot.f90.i

.PHONY : src/modules/plot.i

# target to preprocess a source file
src/modules/plot.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/plot.f90.i
.PHONY : src/modules/plot.f90.i

src/modules/plot.s: src/modules/plot.f90.s

.PHONY : src/modules/plot.s

# target to generate assembly for a file
src/modules/plot.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/plot.f90.s
.PHONY : src/modules/plot.f90.s

src/modules/print_save.o: src/modules/print_save.f90.o

.PHONY : src/modules/print_save.o

# target to build an object file
src/modules/print_save.f90.o:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/print_save.f90.o
.PHONY : src/modules/print_save.f90.o

src/modules/print_save.i: src/modules/print_save.f90.i

.PHONY : src/modules/print_save.i

# target to preprocess a source file
src/modules/print_save.f90.i:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/print_save.f90.i
.PHONY : src/modules/print_save.f90.i

src/modules/print_save.s: src/modules/print_save.f90.s

.PHONY : src/modules/print_save.s

# target to generate assembly for a file
src/modules/print_save.f90.s:
	$(MAKE) -f CMakeFiles/aeroHS.dir/build.make CMakeFiles/aeroHS.dir/src/modules/print_save.f90.s
.PHONY : src/modules/print_save.f90.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... aeroHS"
	@echo "... src/aeroHS.o"
	@echo "... src/aeroHS.i"
	@echo "... src/aeroHS.s"
	@echo "... src/modules/AIRFOIL_object.o"
	@echo "... src/modules/AIRFOIL_object.i"
	@echo "... src/modules/AIRFOIL_object.s"
	@echo "... src/modules/MEANline_object.o"
	@echo "... src/modules/MEANline_object.i"
	@echo "... src/modules/MEANline_object.s"
	@echo "... src/modules/PANEL_object.o"
	@echo "... src/modules/PANEL_object.i"
	@echo "... src/modules/PANEL_object.s"
	@echo "... src/modules/airfoilgenerator.o"
	@echo "... src/modules/airfoilgenerator.i"
	@echo "... src/modules/airfoilgenerator.s"
	@echo "... src/modules/cp_module.o"
	@echo "... src/modules/cp_module.i"
	@echo "... src/modules/cp_module.s"
	@echo "... src/modules/discretization_module.o"
	@echo "... src/modules/discretization_module.i"
	@echo "... src/modules/discretization_module.s"
	@echo "... src/modules/foul.o"
	@echo "... src/modules/foul.i"
	@echo "... src/modules/foul.s"
	@echo "... src/modules/math_module.o"
	@echo "... src/modules/math_module.i"
	@echo "... src/modules/math_module.s"
	@echo "... src/modules/multi_cp.o"
	@echo "... src/modules/multi_cp.i"
	@echo "... src/modules/multi_cp.s"
	@echo "... src/modules/plot.o"
	@echo "... src/modules/plot.i"
	@echo "... src/modules/plot.s"
	@echo "... src/modules/print_save.o"
	@echo "... src/modules/print_save.i"
	@echo "... src/modules/print_save.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

