#!/bin/bash

cd $(pwd)/../src/
javac -cp .:$(pwd)/../lib/* littlelog/*.java
java -Xmx12G  -cp .:$(pwd)/../lib/* littlelog/SecondMain
find . -type f -path "*/*" -name "*.class" -exec rm -f {} \;
