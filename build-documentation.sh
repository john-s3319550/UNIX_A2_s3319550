#!/bin/bash

for f in ./*.1; 

do 
man -l "$f" | col -f > "$f.txt" ;

done

