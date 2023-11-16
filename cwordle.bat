@ECHO OFF

tasm wordle.asm
tasm wordlib.asm
tlink wordle wordlib
wordle