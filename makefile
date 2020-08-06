assembler: assembler.o first_pass.o second_pass.o memory_map.o auxiliary_functions.o auxiliary.h assembler.h first_pass.h constants_tables.h
	gcc -g -Wall -ansi -pedantic assembler.o first_pass.o second_pass.o memory_map.o auxiliary_functions.o -o assembler

assembler.o: assembler.c auxiliary.h assembler.h constants_tables.h
	gcc -c -Wall -ansi -pedantic assembler.c -o assembler.o
first_pass.o: first_pass.c auxiliary.h first_pass.h constants_tables.h
	gcc -c -Wall -ansi -pedantic first_pass.c -o first_pass.o
second_pass.o: second_pass.c auxiliary.h first_pass.h constants_tables.h
	gcc -c -Wall -ansi -pedantic second_pass.c -o second_pass.o
memory_map.o: memory_map.c auxiliary.h
	gcc -c -Wall -ansi -pedantic memory_map.c -o memory_map.o 
auxiliary_functions.o: auxiliary_functions.c auxiliary.h constants_tables.h
	gcc -c -Wall -ansi -pedantic auxiliary_functions.c -o auxiliary_functions.o

