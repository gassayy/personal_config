#! /bin/bash


#find -P . -type f -name '*.c' -o -name '*.h' -o -name "*.cpp" -o -name "*.S" > cscope.files
ack-grep --ignore-dir="stage"  -R -f --cc --asm > cscope.files
cscope -q -R -b -i cscope.files
ctags -L cscope.files

