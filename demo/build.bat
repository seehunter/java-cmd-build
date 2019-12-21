@echo off
cd lib\src
javac com\lkx\lib\Sum.java
rem del com\lkx\lib\Sum.java
jar cvf sum.jar com\lkx\lib
cd ..\..
copy lib\src\sum.jar src
cd src
javac -cp .;sum.jar com\lkx\test\*.java
java -cp .;sum.jar com.lkx.test.Test
echo Main-Class: com.lkx.test.Test\Class-Path: . sum.jar\>Manifest.txt
java -jar test.jar