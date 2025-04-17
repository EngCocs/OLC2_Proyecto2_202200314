.data
heap: .space 4096

.text
.global _start
_start:
  adr x10, heap
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntos' almacenada en el stack.
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntosDeclaracion' almacenada en el stack.
// Declaración explícita con inicialización: hola, tipo: bool
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
// Declaración explícita con inicialización: hola2, tipo: rune
// Rune: E
MOV x0, #69
STR x0, [SP, #-8]!
// Print statement
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
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
// Print statement
// String:  entero 
MOV x11, x10
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
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 116
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x11, [SP, #-8]!
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
// Print statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
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
// Bloque de código
// Asignación a variable: puntosDeclaracion
// AddSub
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Bloque de código
// Asignación a variable: puntosDeclaracion
// AddSub
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Bloque de código
// Asignación a variable: puntosDeclaracion
// AddSub
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
SUB x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
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
// Print statement
// String:  ===Este es el fin=== 
MOV x12, x10
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
// Pusing char 69
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 115
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 116
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
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
// Pusing char 115
MOV w0, #115
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
// Pusing char 108
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
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
// Print statement
// String:  lol 
MOV x13, x10
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x13, [SP, #-8]!
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
// print_bool - Prints 
//
// Input:
//   x0 - 0 = false, any non-zero = true
//--------------------------------------------------------------
.p2align 2
print_bool:
    stp x29, x30, [sp, #-16]!   // Save FP and LR

    cmp x0, #0
    beq print_false             // If x0 == 0, print false

    // Print true
    adr x0, true_str
    bl print_string
    b end_bool

print_false:
    adr x0, false_str
    bl print_string

end_bool:
    ldp x29, x30, [sp], #16     // Restore FP and LR
    ret

.balign 4
true_str:
    .ascii "true\n"

.balign 4
false_str:
    .ascii "false\n"



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
// print_integer_raw - Igual a print_integer pero sin salto de línea final
//--------------------------------------------------------------
.balign 4
print_integer_raw:
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    stp x25, x26, [sp, #-16]!
    stp x27, x28, [sp, #-16]!

    mov x19, x0
    cmp x19, #0
    bge positive_number_raw

    mov x0, #1
    adr x1, minus_sign
    mov x2, #1
    mov w8, #64
    svc #0
    neg x19, x19

positive_number_raw:
    sub sp, sp, #32
    mov x22, sp
    mov x23, #0

    cmp x19, #0
    bne convert_loop_raw

    mov w24, #48
    strb w24, [x22, x23]
    add x23, x23, #1
    b print_result_raw

convert_loop_raw:
    mov x24, #10
    udiv x25, x19, x24
    msub x26, x25, x24, x19
    add x26, x26, #48
    strb w26, [x22, x23]
    add x23, x23, #1
    mov x19, x25
    cbnz x19, convert_loop_raw

    mov x27, #0
reverse_loop_raw:
    sub x28, x23, x27
    sub x28, x28, #1
    cmp x27, x28
    bge print_result_raw
    ldrb w24, [x22, x27]
    ldrb w25, [x22, x28]
    strb w25, [x22, x27]
    strb w24, [x22, x28]
    add x27, x27, #1
    b reverse_loop_raw

print_result_raw:
    mov x0, #1
    mov x1, x22
    mov x2, x23
    mov w8, #64
    svc #0

    add sp, sp, #32
    ldp x27, x28, [sp], #16
    ldp x25, x26, [sp], #16
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret
    .p2align 2
minus_sign:
    .ascii "-"
    
    
