COMMON_OBJECTS 	=
CPU 		= msp430g2553
CFLAGS		= -mmcu=${CPU} -I../project/h
LDFLAGS		= -L/opt/ti/msp430_gcc/include

CC		= msp430-elf-gcc
AS		= msp430-elf-as

all:
	(cd /home/student/2017-spr-arch1-project2-gerardomuela96/project/timerLib; make install)
	(cd /home/student/2017-spr-arch1-project2-gerardomuela96/project; make project2.elf)

project2.elf: ${COMMON_OBJECTS} buzzer.o interrupts.o led.o switches.o mainProject2.o ../project/lib/libTimer.a
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ $^

load: project2.elf
	mspdebug rf2500 "prog project2.elf"

clean:
	(cd /home/student/2017-spr-arch1-project2-gerardomuela96/project/timerLib; make clean)
	rm -f *.o *.elf
	rm -rf lib h
