
@echo off
setlocal enabledelayedexpansion


rmdir build /s /q
mkdir build
cd release

echo Deleting apps ...
rmdir apps /s /q

mkdir apps



set  repo[0]=https://github.com/jedeoric/4kkong.git
set  directory[0]=4kkong
set  targetdirectory[0]=4kkong
set  execute[0]=make.bat
set  binary[0]=release\4kkong.com

set  repo[1]=https://github.com/jedeoric/Times-of-Lore.git
set  directory[1]=Times-of-Lore
set  targetdirectory[1]=tol
set  execute[1]=make.bat
set  binary[1]=release\*.com

cd ..
cd build

::read it using a FOR /L statement
for /l %%n in (0,1,1) do (
rem rmdir 4kkong
echo Generating !binary[%%n]!
mkdir ..\release\apps\!targetdirectory[%%n]!
echo !repo[%%n]!
git clone !repo[%%n]!
echo Enter into !directory[%%n]!
cd !directory[%%n]!
echo Execute !execute[%%n]!
call !execute[%%n]!
echo copy !binary[%%n]! to ..\..\release\apps\!targetdirectory[%%n]!\
copy !binary[%%n]! ..\..\release\apps\!targetdirectory[%%n]!\
cd ..
)



cd ..\