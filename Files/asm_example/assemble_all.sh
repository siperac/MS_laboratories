#!/bin/bash 

IFS='
'
for x in `ls -a1 | grep .\asm`; 
do
echo $x
#asmfile=`echo $x | sed s/[.].*//g`  
perl ./assembler.bin/dlxasm.pl $x
rm $x.exe.hdr
cat $x.exe | hexdump -v -e '/1 "%02X" /1 "%02X" /1 "%02X" /1 "%02X\n"' > mem/$x.mem
rm $x.exe
done

cp mem/* ../DLX_vhd/mem

exit 1
