.data
heap: .space 4096
float_const_0: .double 3.14159

.text
.global _start
_start:
  adr x10, heap
// Print statement
// String: Declaracion explicita con tipo y valor
STR x10, [SP, #-8]!
// Pusing char 68
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 99
MOV w0, #99
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
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
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
// Pusing char 105
MOV w0, #105
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
// Pusing char 97
MOV w0, #97
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
// Pusing char 116
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
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
// Pusing char 121
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 118
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
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
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Declaración explícita con inicialización: entero, tipo: int
// Constant : 42
MOV x0, #42
STR x0, [SP, #-8]!
// Declaración explícita con inicialización: decimal, tipo: float64
adr x9, float_const_0
ldr d0, [x9]
str d0, [sp, #-8]!
// Declaración explícita con inicialización: texto, tipo: string
// String: Hola, mundo!
STR x10, [SP, #-8]!
// Pusing char 72
MOV w0, #72
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
// Pusing char 44
MOV w0, #44
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 100
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 111
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 33
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Declaración explícita con inicialización: booleano, tipo: bool
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
// Print statement
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print statement
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
FMOV D0, d0
BL print_float
// Print statement
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print statement
// Rune: c
MOV x0, #99
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_char
MOV x0, #0
MOV x8, #93
SVC #0



//------------------------Library functios-------------------------------------

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
// Función auxiliar para imprimir sin agregar otro salto
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

.balign 4
newline:
    .ascii "\n"
    


//--------------------------------------------------------------
// print_integer - Prints a signed integer to stdout
//
// Input:
//   x0 - The integer value to print
//--------------------------------------------------------------
.balign 4
print_integer:
    // Save registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    stp x19, x20, [sp, #-16]!  // Save callee-saved registers
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    stp x25, x26, [sp, #-16]!
    stp x27, x28, [sp, #-16]!
    
    // Check if number is negative
    mov x19, x0                // Save original number
    cmp x19, #0                // Compare with zero
    bge positive_number        // Branch if greater or equal to zero
    
    // Handle negative number
    mov x0, #1                 // fd = 1 (stdout)
    adr x1, minus_sign         // Address of minus sign
    mov x2, #1                 // Length = 1
    mov w8, #64                // Syscall write
    svc #0
    
    neg x19, x19               // Make number positive
    
positive_number:
    // Prepare buffer for converting result to ASCII
    sub sp, sp, #32            // Reserve space on stack
    mov x22, sp                // x22 points to buffer
    
    // Initialize digit counter
    mov x23, #0                // Digit counter
    
    // Handle special case for zero
    cmp x19, #0
    bne convert_loop
    
    // If number is zero, just write '0'
    mov w24, #48               // ASCII '0'
    strb w24, [x22, x23]       // Store in buffer
    add x23, x23, #1           // Increment counter
    b print_result             // Skip conversion loop
    
convert_loop:
    // Divide the number by 10
    mov x24, #10
    udiv x25, x19, x24         // x25 = x19 / 10 (quotient)
    msub x26, x25, x24, x19    // x26 = x19 - (x25 * 10) (remainder)
    
    // Convert remainder to ASCII and store in buffer
    add x26, x26, #48          // Convert to ASCII ('0' = 48)
    strb w26, [x22, x23]       // Store digit in buffer
    add x23, x23, #1           // Increment digit counter
    
    // Prepare for next iteration
    mov x19, x25               // Quotient becomes the new number
    cbnz x19, convert_loop     // If number is not zero, continue
    
    // Reverse the buffer since digits are in reverse order
    mov x27, #0                // Start index
reverse_loop:
    sub x28, x23, x27          // x28 = length - current index
    sub x28, x28, #1           // x28 = length - current index - 1
    
    cmp x27, x28               // Compare indices
    bge print_result           // If crossed, finish reversing
    
    // Swap characters
    ldrb w24, [x22, x27]       // Load character from start
    ldrb w25, [x22, x28]       // Load character from end
    strb w25, [x22, x27]       // Store end character at start
    strb w24, [x22, x28]       // Store start character at end
    
    add x27, x27, #1           // Increment start index
    b reverse_loop             // Continue reversing
    
print_result:
    // Add newline
    mov w24, #10               // Newline character
    strb w24, [x22, x23]       // Add to end of buffer
    add x23, x23, #1           // Increment counter
    
    // Print the result
    mov x0, #1                 // fd = 1 (stdout)
    mov x1, x22                // Buffer address
    mov x2, x23                // Buffer length
    mov w8, #64                // Syscall write
    svc #0
    
    // Clean up and restore registers
    add sp, sp, #32            // Free buffer space
    ldp x27, x28, [sp], #16    // Restore callee-saved registers
    ldp x25, x26, [sp], #16
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register
    ret                        // Return to caller
.p2align 2
minus_sign:
    .ascii "-"               // Minus sign


.p2align 2
print_float:
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!

    // Parte entera
    fcvtzs x19, d0
    mov x0, x19
    bl print_integer_raw

    // Imprimir punto decimal
    adr x0, dot_char
    bl print_string_raw

    // Parte decimal
    frintz d1, d0          // d1 = parte entera
    fsub d2, d0, d1        // d2 = d0 - parte entera

    adr x9, float_decimal
    ldr d3, [x9]           // d3 = 1000000.0
    fmul d2, d2, d3        // d2 = decimales * 100
    fcvtzu x20, d2         // convertir a entero

    mov x0, x20
    bl print_integer

    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

.balign 4
dot_char:
    .ascii "."

.balign 8
float_decimal:
    .double 10000000.0



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



    
    
