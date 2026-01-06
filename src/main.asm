org 0x7c00 ; Offsetting to 31744 hexadecimal
bits 16 ; setting bits to 16 (for the compiler)

main:
  hlt ; halting cpu

.halt:
  jmp .halt ; looping in case of an interrupt

times 510-($-$$) db 0 ; fill the empty space with 0
dw 0xAA55 ; what the bios looks for to see if a disk is bootable
