# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/soliman/AVR/ATmega32/AVR_COTS/Test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/soliman/AVR/ATmega32/AVR_COTS/build

# Include any dependencies generated for this target.
include CMakeFiles/ATmega32_COTS.elf.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ATmega32_COTS.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ATmega32_COTS.elf.dir/flags.make

CMakeFiles/ATmega32_COTS.elf.dir/main.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/main.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/Test/main.c
CMakeFiles/ATmega32_COTS.elf.dir/main.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/main.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/main.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/main.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/main.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/Test/main.c

CMakeFiles/ATmega32_COTS.elf.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/main.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/Test/main.c > CMakeFiles/ATmega32_COTS.elf.dir/main.c.i

CMakeFiles/ATmega32_COTS.elf.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/main.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/Test/main.c -o CMakeFiles/ATmega32_COTS.elf.dir/main.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.s

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.o: CMakeFiles/ATmega32_COTS.elf.dir/flags.make
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.o: /home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c
CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.o: CMakeFiles/ATmega32_COTS.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.o"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.o -MF CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.o.d -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.o -c /home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.i"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c > CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.i

CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.s"
	/usr/bin/avr-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c -o CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.s

# Object files for target ATmega32_COTS.elf
ATmega32_COTS_elf_OBJECTS = \
"CMakeFiles/ATmega32_COTS.elf.dir/main.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.o" \
"CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.o"

# External object files for target ATmega32_COTS.elf
ATmega32_COTS_elf_EXTERNAL_OBJECTS =

ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/main.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/HC_05/HC05_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/L298/L298_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LED/LED_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LM35/LM35_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/LDR/LDR_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/CLCD/CLCD_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/HAL/SSD/SSD_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/01-DIO/DIO_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/02-UART/UART_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/03-ADC/ADC_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/04-Timer1/TIMER1_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/05-Timer0/TIMER0_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/MCAL/06-WDT/WDT_program.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/home/soliman/AVR/ATmega32/AVR_COTS/SERVICES/SERVICES_progarm.c.o
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/build.make
ATmega32_COTS.elf: CMakeFiles/ATmega32_COTS.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C executable ATmega32_COTS.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ATmega32_COTS.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ATmega32_COTS.elf.dir/build: ATmega32_COTS.elf
.PHONY : CMakeFiles/ATmega32_COTS.elf.dir/build

CMakeFiles/ATmega32_COTS.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ATmega32_COTS.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ATmega32_COTS.elf.dir/clean

CMakeFiles/ATmega32_COTS.elf.dir/depend:
	cd /home/soliman/AVR/ATmega32/AVR_COTS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/soliman/AVR/ATmega32/AVR_COTS/Test /home/soliman/AVR/ATmega32/AVR_COTS/Test /home/soliman/AVR/ATmega32/AVR_COTS/build /home/soliman/AVR/ATmega32/AVR_COTS/build /home/soliman/AVR/ATmega32/AVR_COTS/build/CMakeFiles/ATmega32_COTS.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ATmega32_COTS.elf.dir/depend

