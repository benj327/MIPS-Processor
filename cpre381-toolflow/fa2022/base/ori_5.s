.data
.text
.globl main

main:
    ori $1 , $0, 0x0001 # Show that you can write to bit 0
    ori $2 , $0, 0x0002 # Show that you can write to bit 1
    ori $3 , $0, 0x0004 # Show that you can write to bit 2
    ori $4 , $0, 0x0008 # Show that you can write to bit 3
    ori $5 , $0, 0x0010 # Show that you can write to bit 4
    ori $6 , $0, 0x0020 # Show that you can write to bit 5
    ori $7 , $0, 0x0040 # Show that you can write to bit 6
    ori $8 , $0, 0x0080 # Show that you can write to bit 7
    ori $9 , $0, 0x0100 # Show that you can write to bit 8
    ori $10, $0, 0x0200 # Show that you can write to bit 9
    ori $11, $0, 0x0400 # Show that you can write to bit 10
    ori $12, $0, 0x0800 # Show that you can write to bit 11
    ori $13, $0, 0x1000 # Show that you can write to bit 12
    ori $14, $0, 0x2000 # Show that you can write to bit 13
    ori $15, $0, 0x4000 # Show that you can write to bit 14
    ori $16, $0, 0x8000 # Show that you can write to bit 15

    halt
