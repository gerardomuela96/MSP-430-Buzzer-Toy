# Project 2

To compile:
~~~
$ make all
~~~

To run the program on the MSP430 (Make sure the MSP430 is connected to the computer):
~~~
$ make load
~~~

To delete all .o files:
~~~
$ make clean
~~~

## Description

The purpose of this project was to make something cool by programming a MSP430 to make it blink the
LEDs, make sounds with the buzzer, and use each button from the MSP430 do something different
when pressed. What I did for my project was to use the four buttons from the MSP430 on Port 2
to play a song when one is pressed and hold. Also, if one of the buttons is pressed, the
green LED from the MSP430 is on, othterwise, the red LED is on. Each button when pressed and hold
plays a different song. Button S1 plays the song Iron Man by Black Sabbath, button S2 plays the
Super Mario theme song, button S3 plays the Star Wars theme song, and button S4 plays the Starman
song from the Super Mario game. I used case statements to play each note from each song. I got the
notes for the Iron Man, the Super Mario theme song, and the Star Wars theme song from YouTube videos
by Todd Downing. The Starman song I already knew how to play it but I had to figure out the notes for
the song. I used a tuner to figure out which frequency to use for the buzzer on the MSP430. I used the
frequency that was the closest to the note from each song. The most challenging part about this project
was to find out how to play each song fluently without having to press the button every single time
to make each note sound. One of the things that helped me a lot to work on this project was to read the
code from the demos directory and to understand what each line of code does. Finally, I come up with
a cool project using the MSP430's LEDs, buzzer, and buttons.