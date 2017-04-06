#! /bin/bash


ack-grep --ignore-dir="libs" \
    --ignore-dir="compiler"  \
    --ignore-dir="jdk" \
    --ignore-dir="mingw" \
    --ignore-dir="minicpjni" \
    --ignore-dir="testmake" \
    -R -f --cc --asm --java > cscope.files

cscope -q -R -b -i cscope.files
ctags -L cscope.files

