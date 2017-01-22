
@echo off
setlocal enabledelayedexpansion


rmdir build /s /q
rmdir release /s /q
mkdir build
mkdir release
mkdir release\cardridge
mkdir release\usbkey
mkdir release\usbkey\bin
mkdir release\usbkey\usr
mkdir release\usbkey\usr\bin
mkdir release\usbkey\usr\share





set  repo[0]=https://github.com/jedeoric/oric-common.git
set  directory[0]=oric-common
set  targetdirectory[0]=
set  execute[0]=make.bat
set  binary[0]=
set  readme[0]=
set	 typebinary[0]=

set  repo[1]=https://github.com/jedeoric/ORIX.git
set  directory[1]=ORIX
set  targetdirectory[1]=
set  execute[1]=build.bat NORUN
set  binary[1]=
set  readme[1]=
set	 typebinary[1]=

set  repo[2]=https://github.com/jedeoric/telemon.git
set  directory[2]=telemon
set  targetdirectory[2]=
set  execute[2]=build.bat NORUN
set  binary[2]=
set  readme[2]=
set	 typebinary[2]=

set  repo[3]=https://github.com/jedeoric/touch.git
set  directory[3]=touch
set  targetdirectory[3]=..\..\release\usbkey\bin
set  execute[3]=make.bat NORUN
set  binary[3]=release\touch
set  readme[3]=

set  repo[4]=https://github.com/jedeoric/4kkong.git
set  directory[4]=4kkong
set  targetdirectory[4]=..\..\release\usbkey\usr\bin
set  execute[4]=make.bat NORUN
set  binary[4]=release\4kkong
set  readme[4]=readme.md

set  repo[5]=https://github.com/jedeoric/file.git
set  directory[5]=file
set  targetdirectory[5]=..\..\release\usbkey\bin
set  execute[5]=make.bat NORUN
set  binary[5]=release\file
set  readme[5]=

set  repo[6]=https://github.com/jedeoric/Times-of-Lore.git
set  directory[6]=Times-of-Lore
set  targetdirectory[6]=..\..\release\usbkey\usr\bin
set  execute[6]=make.bat
set  binary[6]=release\tolsb
set  readme[6]=readme.md
set	 typebinary[6]=apps


set  repo[7]=https://github.com/jedeoric/stormlord.git
set  directory[7]=stormlord
set  targetdirectory[7]=..\..\release\usbkey\usr\bin
set  execute[7]=Buildstormlord.bat
set  binary[7]=release\stormld
set  readme[7]=readme.md


set  repo[8]=https://github.com/jedeoric/ch376-tool.git
set  directory[8]=ch376-tool
set  targetdirectory[8]=..\..\release\usbkey\usr\bin
set  execute[8]=make.bat NORUN
set  binary[8]=release\ch376
set  readme[8]=readme.md


cd build



::read it using a FOR /L statement
for /l %%n in (0,1,8) do (
git clone !repo[%%n]!
echo Entering  !directory[%%n]!
cd !directory[%%n]!
call !execute[%%n]!
cd ..
)


for /l %%n in (3,1,8) do (

cd !directory[%%n]!
echo !binary[%%n]! !targetdirectory[%%n]!
copy !binary[%%n]! !targetdirectory[%%n]!
cd ..
)



cd ..\