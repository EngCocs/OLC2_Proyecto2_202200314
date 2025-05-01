.data
heap: .space 4096

.text
.global _start
_start:
  adr x10, heap
// Print statement
// String: \n==== Switch con break explícito ====
MOV x15, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 61
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 61
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 61
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 61
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 83
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 116
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 99
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 99
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 111
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 98
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 107
MOV w0, #107
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 120
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 63
MOV w0, #63
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 99
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 116
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 111
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 61
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 61
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 61
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 61
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x15, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #10
STRB w0, [x10]
ADD x10, x10, 1
MOV w0, #0
STRB w0, [x10]
ADD x10, x10, 1
MOV w0, #0
STRB w0, [x10]
ADD x10, x10, 1
MOV x0, x9
MOV X0, x0
BL print_string_raw
MOV x0, #0
MOV x8, #93
SVC #0



//------------------------Library functios-------------------------------------

//--------------------------------------------------------------
// print_string_raw - Prints string without newline
//--------------------------------------------------------------
.balign 4
print_string_raw:
    stp     x29, x30, [sp, #-16]!
    stp     x19, x20, [sp, #-16]!

    mov     x19, x0

print_raw_loop:
    ldrb    w20, [x19]
    cbz     w20, print_raw_done

    mov     x0, #1
    mov     x1, x19
    mov     x2, #1
    mov     x8, #64
    svc     #0

    add     x19, x19, #1
    b       print_raw_loop

print_raw_done:
    ldp     x19, x20, [sp], #16
    ldp     x29, x30, [sp], #16
    ret
    
    
