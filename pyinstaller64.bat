@echo off
rem --- 
rem ---  exe�𐶐�
rem --- 

rem ---  �J�����g�f�B���N�g�������s��ɕύX
cd /d %~dp0

cls

del dist\*.lnk
move /y dist\*.exe dist\past

activate vmdsizing_np && cd src && python translate.py && cd .. && activate vmdsizing_cython && src\setup_install.bat && pyinstaller --clean vroid2pmx.spec && copy /y archive\Readme.txt dist\Readme.txt && copy /y archive\����Readme.txt dist\����Readme.txt && activate vmdsizing_np && cd src && python lnk.py && cd ..

rem clean�Ȃ�
rem activate vmdsizing_np && cd src && python translate.py && cd .. && activate vmdsizing_cython && pyinstaller --clean vroid2pmx.spec

rundll32 user32.dll,MessageBeep

