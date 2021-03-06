#!/bin/bash

OBJDUMP="$DEVKITPPC/bin/powerpc-eabi-objdump -D -bbinary -EB -mpowerpc -M gekko --adjust-vma=0x80003200"
$OBJDUMP baserom.dol > baserom.dump
$OBJDUMP main.dol > main.dump
diff -u --color=always baserom.dump main.dump | head -n 2000