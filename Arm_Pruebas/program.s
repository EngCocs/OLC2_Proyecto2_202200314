.data
heap: .space 4096
float_const_0: .double 13
float_const_1: .double 13
float_const_2: .double 0.001
float_const_3: .double 0.001
float_const_4: .double 35
float_const_5: .double 98

.text
.global _start
_start:
  adr x10, heap
// Print statement
// Equality / Inequality
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
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
// Equality / Inequality
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, NE
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
// Equality / Inequality
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
CSET x0, EQ
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
// Equality / Inequality
adr x9, float_const_2
ldr d0, [x9]
str d0, [sp, #-8]!
adr x9, float_const_3
ldr d0, [x9]
str d0, [sp, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
FMOV d1, x1
FMOV d0, x0
FCMP d0, d1
CSET x0, NE
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
// Equality / Inequality
// Constant : 35
MOV x0, #35
STR x0, [SP, #-8]!
adr x9, float_const_4
ldr d0, [x9]
str d0, [sp, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
FMOV d1, d0
SCVTF d2, x0
FCMP d2, d1
CSET x0, EQ
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
// Equality / Inequality
adr x9, float_const_5
ldr d0, [x9]
str d0, [sp, #-8]!
// Constant : 98
MOV x0, #98
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
FMOV d1, d0
SCVTF d2, x1
FCMP d1, d2
CSET x0, NE
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
// Equality / Inequality
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
// Boolean: false
MOV x0, #0
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
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
// Equality / Inequality
// Boolean: false
MOV x0, #0
STR x0, [SP, #-8]!
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, NE
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
// Equality / Inequality
// Rune: h
MOV x0, #104
STR x0, [SP, #-8]!
// Rune: a
MOV x0, #97
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
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
// Equality / Inequality
// Rune: H
MOV x0, #72
STR x0, [SP, #-8]!
// Rune: H
MOV x0, #72
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, NE
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
// Equality / Inequality
// String: ho
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x12, [SP, #-8]!
// String: Ha
MOV x13, x10
// Pusing char 72
MOV w0, #72
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
STR x13, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
BL strcmp
CMP x0, #0
CSET x0, NE
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
// Equality / Inequality
// String: Ho
MOV x14, x10
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
// String: Ho
MOV x15, x10
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x15, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
BL strcmp
CMP x0, #0
CSET x0, NE
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
// strcmp - Compara dos strings null-terminated
//
// Entradas:
//   x0 - dirección de string1
//   x1 - dirección de string2
// Salida:
//   x0 = 0 si iguales, <0 si str1 < str2, >0 si str1 > str2
//--------------------------------------------------------------
.balign 4
strcmp:
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!

    mov x19, x0      // str1
    mov x20, x1      // str2

strcmp_loop:
    ldrb w0, [x19], #1
    ldrb w1, [x20], #1

    cmp w0, w1
    b.ne strcmp_diff  // si son diferentes, saltar

    cbz w0, strcmp_equal  // si llegamos al final del string (null terminator)

    b strcmp_loop

strcmp_diff:
    sub w0, w0, w1    // resultado negativo, cero o positivo
    b strcmp_end

strcmp_equal:
    mov w0, #0        // iguales

strcmp_end:
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret

    
    
