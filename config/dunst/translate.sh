#!/bin/bash

TL=$(xclip -o -sel clipboard | trans -b ja:en)
dunstify Translation "$TL"
#echo "$TL" | xclip -i -sel clipboard
