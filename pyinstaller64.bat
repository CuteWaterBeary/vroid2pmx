@echo off
rem --- 
rem ---  exe�𐶐�
rem --- 

rem ---  �J�����g�f�B���N�g�������s��ɕύX
cd /d %~dp0

cls

activate vmdsizing_np && cd src && python translate.py && cd .. && activate vmdsizing_cython && src\setup_install.bat && pyinstaller --clean vroid2pmx.spec

rem clean�Ȃ�
rem activate vmdsizing_np && cd src && python translate.py && cd .. && activate vmdsizing_cython && pyinstaller --clean vroid2pmx.spec