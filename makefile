all: main1 run
main1:
	g++ *.cpp *.asm
run:
	./a.out
