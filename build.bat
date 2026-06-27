SET XROARPATH=C:\apps\xroar-1.6.3-w64
SET ASMPATH=C:\apps\asm6809-2.12-w64

SET path=%XROARPATH%;%ASMPATH%

asm6809.exe --exec 9574 --dragondos Snakey.asm -o Snakey.bin -l Snakey.lst

xroar.exe -default-machine d32 -rompath %XROARPATH% -run Snakey.bin