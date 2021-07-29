#! /bin/bash

WhosThere(){
echo "Hey! Your face looks familiar. What's your name again?"

read varName

echo "Riiiight, good to see you again, $varName! Or should I call you Nosy Rosy 
now? That's what I'm calling you. I don't care.
Here's this computer's login informaation, Nosy Rosy:"

last
}

WhosThere