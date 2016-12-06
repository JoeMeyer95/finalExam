all : 
	make archive
	make build
build:
	make counter

counter : finalCounter.o
	g++ finalCounter.o -o counter

finalCounter.o : finalCounter.cc

	g++ -c finalCounter.cc

archive :
	tar -czvf finalCounter.tar.gz finalCounter.cc story.txt makefile

clean :
	rm -f finalCounter finalCounter.o

