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
// Print statement
// String: inicio---
STR x10, [SP, #-8]!
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
// Pusing char 111
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 45
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 45
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 45
MOV w0, #45
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
// Print statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Bloque de código
// Asignación a variable: puntosDeclaracion
// AddSub
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
// Operation : +
STR x0, [SP, #-8]!
// Result : x0
// Push result : x0
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: hola
STR x10, [SP, #-8]!
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
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Bloque de código
// Asignación a variable: puntosDeclaracion
// AddSub
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
// Operation : +
STR x0, [SP, #-8]!
// Result : x0
// Push result : x0
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: segunda declaracion
STR x10, [SP, #-8]!
// Pusing char 115
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 103
MOV w0, #103
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
// Pusing char 100
MOV w0, #100
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Bloque de código
// Asignación a variable: puntosDeclaracion
// AddSub
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
SUB x0, x0, x1
// Operation : -
STR x0, [SP, #-8]!
// Result : x0
// Push result : x0
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: si se pudo
STR x10, [SP, #-8]!
// Pusing char 115
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 115
MOV w0, #115
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
// Pusing char 112
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print statement
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print statement
// String: Adios
STR x10, [SP, #-8]!
// Pusing char 65
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 100
MOV w0, #100
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
// Pusing char 115
MOV w0, #115
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
    // Restore saved registers
    ldp     x19, x20, [sp], #16
    ldp     x29, x30, [sp], #16
    ret
    

//--------------------------------------------------------------
// print_integer - Prints a signed integer to stdout
//
// Input:
//   x0 - The integer value to print
//--------------------------------------------------------------
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

minus_sign:
    .ascii "-"               // Minus sign