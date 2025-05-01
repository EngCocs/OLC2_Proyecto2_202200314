.data
heap: .space 4096
float_const_0: .double 1.23
float_const_1: .double 2.22

.text
.global _start
_start:
  adr x10, heap
// If statement
// Relational
adr x9, float_const_0
ldr d0, [x9]
str d0, [sp, #-8]!
adr x9, float_const_1
ldr d0, [x9]
str d0, [sp, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
FMOV d1, x1
FMOV d0, x0
FCMP d0, d1
CSET x0, LT
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_0
// Bloque de código
// Print statement
// String: hola
MOV x12, x10
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 111
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x12, [SP, #-8]!
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
B label_1
label_0:
// If statement
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_2
// Bloque de código
// Print statement
// Rune: a
MOV x0, #97
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_char
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
label_2:
label_1:
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



//--------------------------------------------------------------
// print_char - Prints a single character in x0 to stdout
//--------------------------------------------------------------
.p2align 2
print_char:
    stp x29, x30, [sp, #-16]!

    sub sp, sp, #16         // Reservamos espacio
    strb w0, [sp]           // Guardamos el carácter en memoria (8 bits)

    mov x0, #1              // fd = stdout
    mov x1, sp              // dirección del caracter
    mov x2, #1              // longitud: 1 byte
    mov x8, #64             // syscall: write
    svc #0
    // Imprimir salto de línea
    adr     x0, newline
    bl      print_string_raw

    add sp, sp, #16         // Limpiamos
    ldp x29, x30, [sp], #16
    ret





//--------------------------------------------------------------
// print_string - Prints a null-terminated string to stdout
//
// Input:
//   x0 - The address of the null-terminated string to print
//--------------------------------------------------------------
.balign 4
print_string:
    // Save link register and other registers we'll use
    stp     x29, x30, [sp, #-16]!
    stp     x19, x20, [sp, #-16]!
    
    // x19 will hold the string address
    mov     x19, x0
    
print_loop:
    // Load a byte from the string
    ldrb    w20, [x19]
    
    // Check if it's the null terminator (0)
    cbz     w20, print_done
    
    // Prepare for write syscall
    mov     x0, #1              // File descriptor: 1 for stdout
    mov     x1, x19             // Address of the character to print
    mov     x2, #1              // Length: 1 byte
    mov     x8, #64             // syscall: write (64 on ARM64)
    svc     #0                  // Make the syscall
    
    // Move to the next character
    add     x19, x19, #1
    
    // Continue the loop
    b       print_loop
    
print_done:
    // Imprimir salto de línea
    adr     x0, newline
    bl      print_string_raw
    // Restore saved registers
    ldp     x19, x20, [sp], #16
    ldp     x29, x30, [sp], #16
    ret


.balign 4
newline:
    .ascii "\n"
    
    
