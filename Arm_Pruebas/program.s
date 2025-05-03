.data
heap: .space 4096

.text
.global _start
_start:
  adr x10, heap
// Bloque especial: func main()
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntos' almacenada en el stack.
// Print statement
// String: === Archivo de prueba de funcionalidades intermedias ===
MOV x9, x10
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
// Pusing char 65
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 118
MOV w0, #118
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
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 98
MOV w0, #98
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
// Pusing char 105
MOV w0, #105
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
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
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
// Pusing char 97
MOV w0, #97
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
STR x9, [SP, #-8]!
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
// String: Validaciones manuales esperadas: 4
MOV x10, x10
// Pusing char 86
MOV w0, #86
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
// Pusing char 105
MOV w0, #105
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
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 115
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
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
// Pusing char 97
MOV w0, #97
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
// Pusing char 115
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 52
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
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
// String: ==== Manejo de entornos ====
MOV x11, x10
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
// Pusing char 77
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 106
MOV w0, #106
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
// Pusing char 110
MOV w0, #110
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntosEntornos' almacenada en el stack.
// Print statement
// String: \nVariable redeclarada en un entorno diferente
MOV x12, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 86
MOV w0, #86
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 98
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 32
MOV w0, #32
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 102
MOV w0, #102
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
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
// Declaración variable implícita 'b' almacenada en el stack.
// If statement
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_0
// Bloque de código
// Constant : 20
MOV x0, #20
STR x0, [SP, #-8]!
// Declaración variable implícita 'b' almacenada en el stack.
// Print statement
// String: b dentro del if =
MOV x13, x10
// Pusing char 98
MOV w0, #98
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
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
MOV w0, #32
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
// If statement
// Equality / Inequality
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 20
MOV x0, #20
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_1
// Bloque de código
// Asignación a variable: puntosEntornos
// AddSub
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 2
MOV x0, #2
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
// Print statement
// String: OK Redeclaración en entorno diferente: correcto
MOV x14, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 82
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
B label_2
label_1:
// Bloque de código
// Print statement
// String: X Redeclaración en entorno diferente: incorrecto
MOV x15, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 82
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
label_2:
// Remover 8 bytes del stack
MOV x0, #8
ADD sp, sp, x0
label_0:
// Print statement
// String: b fuera del if =
MOV x9, x10
// Pusing char 98
MOV w0, #98
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
// Pusing char 117
MOV w0, #117
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
// String: \nUso de variable en un entorno superior
MOV x10, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 85
MOV w0, #85
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 115
MOV w0, #115
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
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 98
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 115
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
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
STR x10, [SP, #-8]!
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
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
// Declaración variable implícita 'c' almacenada en el stack.
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
// Declaración variable implícita 'd' almacenada en el stack.
// If statement
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_3
// Bloque de código
// Constant : 20
MOV x0, #20
STR x0, [SP, #-8]!
// Declaración variable implícita 'd' almacenada en el stack.
// Print statement
// String: c dentro del if =
MOV x11, x10
// Pusing char 99
MOV w0, #99
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
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
MOV w0, #32
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
// String: d dentro del if =
MOV x12, x10
// Pusing char 100
MOV w0, #100
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
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
MOV w0, #32
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
// Asignación a variable: c
// Constant : 30
MOV x0, #30
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #16
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Asignación a variable: d
// Constant : 30
MOV x0, #30
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Remover 8 bytes del stack
MOV x0, #8
ADD sp, sp, x0
label_3:
// Print statement
// String: c fuera del if =
MOV x13, x10
// Pusing char 99
MOV w0, #99
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
// Pusing char 117
MOV w0, #117
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
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
MOV w0, #32
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
MOV x0, #8
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
// String: d fuera del if =
MOV x14, x10
// Pusing char 100
MOV w0, #100
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
// Pusing char 117
MOV w0, #117
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
// If statement
// Logical Operation
// Equality / Inequality
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 30
MOV x0, #30
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
// Equality / Inequality
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
AND x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_4
// Bloque de código
// Asignación a variable: puntosEntornos
// AddSub
MOV x0, #24
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
MOV x1, #24
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: OK Uso de variable en entorno superior: correcto
MOV x15, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 85
MOV w0, #85
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 115
MOV w0, #115
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
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 98
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 115
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
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
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
B label_5
label_4:
// Bloque de código
// Print statement
// String: X Uso de variable en entorno superior: incorrecto
MOV x9, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 85
MOV w0, #85
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 115
MOV w0, #115
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
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 98
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 115
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
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
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
label_5:
// Print statement
// String: \n==== If / Else ====
MOV x10, x10
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
// Pusing char 73
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 47
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 69
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
STR x10, [SP, #-8]!
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntosIfElse' almacenada en el stack.
// Print statement
// String: \n\n###Validacion Manual
MOV x11, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 86
MOV w0, #86
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
// Pusing char 105
MOV w0, #105
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
// Pusing char 77
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// String: If simple
MOV x12, x10
// Pusing char 73
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 101
MOV w0, #101
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
// If statement
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_6
// Bloque de código
// Print statement
// String: Condición verdadera
MOV x13, x10
// Pusing char 67
MOV w0, #67
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 118
MOV w0, #118
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
// Asignación a variable: puntosIfElse
// AddSub
MOV x0, #0
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
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
label_6:
// Print statement
// String: \nIf-Else
MOV x14, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 73
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 45
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 69
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
// If statement
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_7
// Bloque de código
// Print statement
// String: Condición verdadera en if-else
MOV x15, x10
// Pusing char 67
MOV w0, #67
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 118
MOV w0, #118
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 45
MOV w0, #45
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
B label_8
label_7:
// Bloque de código
// Print statement
// String: Condición falsa en if-else
MOV x9, x10
// Pusing char 67
MOV w0, #67
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 115
MOV w0, #115
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 45
MOV w0, #45
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
label_8:
// If statement
// Boolean: false
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_9
// Bloque de código
// Print statement
// String: Esto no debería imprimirse
MOV x10, x10
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 98
MOV w0, #98
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
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
B label_10
label_9:
// Bloque de código
// Print statement
// String: Condición falsa, ejecutando else
MOV x11, x10
// Pusing char 67
MOV w0, #67
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 115
MOV w0, #115
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 106
MOV w0, #106
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
// Pusing char 117
MOV w0, #117
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
// Asignación a variable: puntosIfElse
// AddSub
MOV x0, #0
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
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
label_10:
// Print statement
// String: \nIf-ElseIf-Else
MOV x12, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 73
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 45
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 69
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 73
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 45
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 69
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// If statement
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_11
// Bloque de código
// Print statement
// String: Primera condición verdadera
MOV x13, x10
// Pusing char 80
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 118
MOV w0, #118
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
B label_12
label_11:
// If statement
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_13
// Bloque de código
// Print statement
// String: Segunda condición verdadera, pero no se ejecuta
MOV x14, x10
// Pusing char 83
MOV w0, #83
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 118
MOV w0, #118
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
// Pusing char 112
MOV w0, #112
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 106
MOV w0, #106
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
// Pusing char 117
MOV w0, #117
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
B label_14
label_13:
// Bloque de código
// Print statement
// String: Ninguna condición verdadera
MOV x15, x10
// Pusing char 78
MOV w0, #78
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 118
MOV w0, #118
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
label_14:
label_12:
// If statement
// Boolean: false
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_15
// Bloque de código
// Print statement
// String: Primera condición falsa
MOV x9, x10
// Pusing char 80
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 115
MOV w0, #115
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
STR x9, [SP, #-8]!
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
B label_16
label_15:
// If statement
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_17
// Bloque de código
// Print statement
// String: Segunda condición verdadera
MOV x10, x10
// Pusing char 83
MOV w0, #83
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 118
MOV w0, #118
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
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
// Asignación a variable: puntosIfElse
// AddSub
MOV x0, #0
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
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
B label_18
label_17:
// Bloque de código
// Print statement
// String: Ninguna condición verdadera
MOV x11, x10
// Pusing char 78
MOV w0, #78
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 118
MOV w0, #118
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
label_18:
label_16:
// Print statement
// String: 
MOV x12, x10
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
// String: \n==== For Tipo While ====
MOV x13, x10
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
// Pusing char 70
MOV w0, #70
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 84
MOV w0, #84
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
// Pusing char 87
MOV w0, #87
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntosForWhile' almacenada en el stack.
// Print statement
// String: For como while simple
MOV x14, x10
// Pusing char 70
MOV w0, #70
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'i' almacenada en el stack.
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'suma' almacenada en el stack.
// For-While statement
label_19:
// Relational
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LT
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_20
// Bloque de código
// Print statement
// String: i =
MOV x15, x10
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
MOV w0, #32
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
MOV x0, #8
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
// Asignación a variable: suma
// AddSub
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Asignación a variable: i
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
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
B label_19
label_20:
// Fin del for-while
// If statement
// Equality / Inequality
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_21
// Bloque de código
// Asignación a variable: puntosForWhile
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
// Print statement
// String: OK For como while simple: correcto
MOV x9, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
B label_22
label_21:
// Bloque de código
// Print statement
// String: X For como while simple: incorrecto
MOV x10, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
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
label_22:
// Print statement
// String: \nFor como while con condición compuesta
MOV x11, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 109
MOV w0, #109
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'j' almacenada en el stack.
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
// Declaración variable implícita 'producto' almacenada en el stack.
// For-While statement
label_23:
// Logical Operation
// Relational
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LT
STR x0, [SP, #-8]!
// Relational
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 50
MOV x0, #50
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LT
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
AND x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_24
// Bloque de código
// Asignación a variable: j
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
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Asignación a variable: producto
// MulDiv
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
MUL x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: j =
MOV x12, x10
// Pusing char 106
MOV w0, #106
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
MOV w0, #32
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
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String: producto =
MOV x13, x10
// Pusing char 112
MOV w0, #112
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
// Pusing char 100
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 99
MOV w0, #99
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
MOV w0, #32
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
B label_23
label_24:
// Fin del for-while
// If statement
// Logical Operation
// Equality / Inequality
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
// Equality / Inequality
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 120
MOV x0, #120
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
AND x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_25
// Bloque de código
// Asignación a variable: puntosForWhile
// AddSub
MOV x0, #32
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
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: OK For como while con condición compuesta: correcto
MOV x14, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
B label_26
label_25:
// Bloque de código
// Print statement
// String: X For como while con condición compuesta: incorrecto
MOV x15, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
label_26:
// Print statement
// String: \nFor como while anidado (patrón X)
MOV x9, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 97
MOV w0, #97
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 40
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 116
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 63
MOV w0, #63
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
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 41
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
// String: \n\n###Validacion Manual
MOV x10, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 86
MOV w0, #86
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
// Pusing char 105
MOV w0, #105
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
// Pusing char 77
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
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
// Constant : 5
MOV x0, #5
STR x0, [SP, #-8]!
// Declaración variable implícita 'n' almacenada en el stack.
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'x' almacenada en el stack.
// For-While statement
label_27:
// Relational
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LT
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_28
// Bloque de código
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'j' almacenada en el stack.
// String:  
MOV x11, x10
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
// Declaración variable implícita 'fila' almacenada en el stack.
// For-While statement
label_29:
// Relational
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LT
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_30
// Bloque de código
// If statement
// Logical Operation
// Equality / Inequality
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
// Equality / Inequality
// AddSub
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
// AddSub
MOV x0, #40
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
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ORR x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_31
// Bloque de código
// Asignación a variable: fila
// AddSub
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// String: *
MOV x12, x10
// Pusing char 42
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x12, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
BL concat_strings
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
B label_32
label_31:
// Bloque de código
// Asignación a variable: fila
// AddSub
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// String:  
MOV x13, x10
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
LDR x1, [SP], #8
LDR x0, [SP], #8
BL concat_strings
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
label_32:
// Asignación a variable: j
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
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
B label_29
label_30:
// Fin del for-while
// Print statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
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
// Asignación a variable: x
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
// Remover 16 bytes del stack
MOV x0, #16
ADD sp, sp, x0
B label_27
label_28:
// Fin del for-while
// Print statement
// String: 
MOV x14, x10
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
// If statement
// Equality / Inequality
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_33
// Bloque de código
// Asignación a variable: puntosForWhile
// AddSub
MOV x0, #48
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #48
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: OK For como while anidado: correcto
MOV x15, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 97
MOV w0, #97
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
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
B label_34
label_33:
// Bloque de código
// Print statement
// String: X For como while anidado: incorrecto
MOV x9, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 97
MOV w0, #97
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
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
label_34:
// Print statement
// String: \n==== For Clásico ====
MOV x10, x10
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
// Pusing char 70
MOV w0, #70
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
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
STR x10, [SP, #-8]!
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntosForClasico' almacenada en el stack.
// Print statement
// String: For clásico simple
MOV x11, x10
// Pusing char 70
MOV w0, #70
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 101
MOV w0, #101
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
// Asignación a variable: suma
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #40
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// For statement
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'i' almacenada en el stack.
label_35:
// Relational
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LT
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_36
// Bloque de código
// Print statement
// String: i =
MOV x12, x10
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
STR x12, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
// Asignación a variable: suma
// AddSub
MOV x0, #48
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #48
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
label_37:
// Post-incremento de variable 'i'
MOV x0, #0
ADD x0, sp, x0
LDR x1, [x0, #0]
ADD x1, x1, 1
STR x1, [x0, #0]
B label_35
label_36:
// Fin del for
// Remover 8 bytes del stack
MOV x0, #8
ADD sp, sp, x0
// Fin del for
// If statement
// Equality / Inequality
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_38
// Bloque de código
// Asignación a variable: puntosForClasico
// AddSub
MOV x0, #0
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
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: OK For clásico simple: correcto
MOV x13, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
B label_39
label_38:
// Bloque de código
// Print statement
// String: X For clásico simple: incorrecto
MOV x14, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
label_39:
// Print statement
// String: \nFor clásico anidado (tabla de multiplicar)
MOV x15, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 40
MOV w0, #40
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
// Pusing char 98
MOV w0, #98
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
// Pusing char 108
MOV w0, #108
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
// Pusing char 41
MOV w0, #41
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
// Print statement
// String: \n\n###Validacion Manual
MOV x9, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 86
MOV w0, #86
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
// Pusing char 105
MOV w0, #105
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
// Pusing char 77
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
// For statement
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
// Declaración variable implícita 'i' almacenada en el stack.
label_40:
// Relational
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 3
MOV x0, #3
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LE
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_41
// Bloque de código
// For statement
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
// Declaración variable implícita 'j' almacenada en el stack.
label_43:
// Relational
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 3
MOV x0, #3
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LE
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_44
// Bloque de código
// Print statement
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String: x
MOV x10, x10
// Pusing char 120
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String: =
MOV x11, x10
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
STR x11, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
// MulDiv
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
MUL x0, x0, x1
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
label_45:
// Post-incremento de variable 'j'
MOV x0, #0
ADD x0, sp, x0
LDR x1, [x0, #0]
ADD x1, x1, 1
STR x1, [x0, #0]
B label_43
label_44:
// Fin del for
// Remover 8 bytes del stack
MOV x0, #8
ADD sp, sp, x0
// Fin del for
// Print statement
// String: --
MOV x12, x10
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
label_42:
// Post-incremento de variable 'i'
MOV x0, #0
ADD x0, sp, x0
LDR x1, [x0, #0]
ADD x1, x1, 1
STR x1, [x0, #0]
B label_40
label_41:
// Fin del for
// Remover 8 bytes del stack
MOV x0, #8
ADD sp, sp, x0
// Fin del for
// Print statement
// String: 
MOV x13, x10
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
// Asignación a variable: puntosForClasico
// AddSub
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: OK For clásico anidado: correcto
MOV x14, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
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
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
// String: \n==== Switch/Case ====
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
// Pusing char 47
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntosSwitch' almacenada en el stack.
// Print statement
// String: \n\n###Validacion Manual
MOV x9, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 35
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 86
MOV w0, #86
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
// Pusing char 105
MOV w0, #105
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
// Pusing char 77
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
// String: Switch simple
MOV x10, x10
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
// Pusing char 109
MOV w0, #109
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
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
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
// Declaración variable implícita 'dia' almacenada en el stack.
// Switch statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x20, [SP], #8
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_48
// Constant : 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_49
// Constant : 3
MOV x0, #3
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_50
// Constant : 4
MOV x0, #4
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_51
// Constant : 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_52
// Constant : 6
MOV x0, #6
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_53
// Constant : 7
MOV x0, #7
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_54
B label_47
label_48:
// Print statement
// String: Lunes
MOV x11, x10
// Pusing char 76
MOV w0, #76
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
// Asignación a variable: puntosSwitch
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
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
B label_46
label_49:
// Print statement
// String: Martes
MOV x12, x10
// Pusing char 77
MOV w0, #77
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
B label_46
label_50:
// Print statement
// String: Miércoles
MOV x13, x10
// Pusing char 77
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 63
MOV w0, #63
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
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
// Pusing char 108
MOV w0, #108
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
B label_46
label_51:
// Print statement
// String: Jueves
MOV x14, x10
// Pusing char 74
MOV w0, #74
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 118
MOV w0, #118
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
B label_46
label_52:
// Print statement
// String: Viernes
MOV x15, x10
// Pusing char 86
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
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
// Pusing char 110
MOV w0, #110
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
B label_46
label_53:
// Print statement
// String: Sábado
MOV x9, x10
// Pusing char 83
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 63
MOV w0, #63
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 98
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
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
STR x9, [SP, #-8]!
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
B label_46
label_54:
// Print statement
// String: Domingo
MOV x10, x10
// Pusing char 68
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 111
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 103
MOV w0, #103
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
STR x10, [SP, #-8]!
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
B label_46
label_47:
// Print statement
// String: Día inválido
MOV x11, x10
// Pusing char 68
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 63
MOV w0, #63
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
// Pusing char 118
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 63
MOV w0, #63
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
label_46:
// Fin del switch
// Print statement
// String: \nSwitch con default
MOV x12, x10
// Pusing char 10
MOV w0, #10
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
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 116
MOV w0, #116
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
// Constant : 100
MOV x0, #100
STR x0, [SP, #-8]!
// Declaración variable implícita 'numero' almacenada en el stack.
// Switch statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x20, [SP], #8
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_57
// Constant : 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_58
B label_56
label_57:
// Print statement
// String: No se debería imprimir
MOV x13, x10
// Pusing char 78
MOV w0, #78
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
// Pusing char 98
MOV w0, #98
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
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
B label_55
label_58:
// Print statement
// String: No se debería imprimir
MOV x14, x10
// Pusing char 78
MOV w0, #78
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
// Pusing char 98
MOV w0, #98
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
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
STR x14, [SP, #-8]!
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
B label_55
label_56:
// Print statement
// String: Número no reconocido, se ejecuta default
MOV x15, x10
// Pusing char 78
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 63
MOV w0, #63
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 111
MOV w0, #111
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 106
MOV w0, #106
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
// Pusing char 117
MOV w0, #117
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
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 116
MOV w0, #116
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
// Asignación a variable: puntosSwitch
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
label_55:
// Fin del switch
// Print statement
// String: \nSwitch con break explícito
MOV x9, x10
// Pusing char 10
MOV w0, #10
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
// Constant : 2
MOV x0, #2
STR x0, [SP, #-8]!
// Declaración variable implícita 'numeroBreak' almacenada en el stack.
// Switch statement
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x20, [SP], #8
// Constant : 1
MOV x0, #1
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_60
// Constant : 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_61
// Constant : 3
MOV x0, #3
STR x0, [SP, #-8]!
LDR x1, [SP], #8
CMP x20, x1
BEQ label_62
B label_59
label_60:
// Print statement
// String: No se debería imprimir
MOV x10, x10
// Pusing char 78
MOV w0, #78
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
// Pusing char 98
MOV w0, #98
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
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
STR x10, [SP, #-8]!
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
B label_59
label_61:
// Print statement
// String: Caso 2 - Se ejecuta este y debe detenerse
MOV x11, x10
// Pusing char 67
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 115
MOV w0, #115
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
// Pusing char 50
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 45
MOV w0, #45
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
// Pusing char 106
MOV w0, #106
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
// Pusing char 117
MOV w0, #117
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
// Pusing char 98
MOV w0, #98
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
// Pusing char 110
MOV w0, #110
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
// Asignación a variable: puntosSwitch
// AddSub
MOV x0, #24
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
MOV x1, #24
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Break statement
B label_59
// Print statement
// String: No debería ejecutarse si el break funciona
MOV x12, x10
// Pusing char 78
MOV w0, #78
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
// Pusing char 98
MOV w0, #98
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 106
MOV w0, #106
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
// Pusing char 117
MOV w0, #117
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 102
MOV w0, #102
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
// Asignación a variable: puntosSwitch
// AddSub
MOV x0, #24
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
MOV x1, #24
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
label_62:
// Print statement
// String: No se debería imprimir
MOV x13, x10
// Pusing char 78
MOV w0, #78
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
// Pusing char 98
MOV w0, #98
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 114
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
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
B label_59
label_59:
// Fin del switch
// Print statement
// String: 
MOV x14, x10
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
// String: \n==== Break ====
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
// Pusing char 66
MOV w0, #66
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntosBreak' almacenada en el stack.
// Print statement
// String: Break en for infinito
MOV x9, x10
// Pusing char 66
MOV w0, #66
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 32
MOV w0, #32
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'contador' almacenada en el stack.
// Asignación a variable: suma
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #88
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// For-While statement
label_63:
// Boolean: true
MOV x0, #1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_64
// Bloque de código
// Print statement
// String: contador =
MOV x10, x10
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
// Asignación a variable: suma
// AddSub
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #88
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Asignación a variable: contador
// AddSub
MOV x0, #0
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
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// If statement
// Relational
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 5
MOV x0, #5
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, GE
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_65
// Bloque de código
// Break statement
B label_64
label_65:
B label_63
label_64:
// Fin del for-while
// If statement
// Equality / Inequality
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_66
// Bloque de código
// Asignación a variable: puntosBreak
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
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: OK Break en for infinito: correcto
MOV x11, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 66
MOV w0, #66
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 32
MOV w0, #32
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
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
B label_67
label_66:
// Bloque de código
// Print statement
// String: X Break en for infinito: incorrecto
MOV x12, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 66
MOV w0, #66
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 32
MOV w0, #32
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
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
label_67:
// Print statement
// String: \nBreak en for clásico
MOV x13, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 66
MOV w0, #66
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
// Pusing char 102
MOV w0, #102
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
// Asignación a variable: suma
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #88
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// For statement
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'i' almacenada en el stack.
label_68:
// Relational
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LT
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_69
// Bloque de código
// Print statement
// String: i =
MOV x14, x10
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
STR x14, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
// Asignación a variable: suma
// AddSub
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// If statement
// Relational
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 4
MOV x0, #4
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, GE
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_71
// Bloque de código
// Break statement
B label_69
label_71:
label_70:
// Post-incremento de variable 'i'
MOV x0, #0
ADD x0, sp, x0
LDR x1, [x0, #0]
ADD x1, x1, 1
STR x1, [x0, #0]
B label_68
label_69:
// Fin del for
// Remover 8 bytes del stack
MOV x0, #8
ADD sp, sp, x0
// Fin del for
// If statement
// Equality / Inequality
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_72
// Bloque de código
// Asignación a variable: puntosBreak
// AddSub
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: OK Break en for clásico: correcto
MOV x15, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 66
MOV w0, #66
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
B label_73
label_72:
// Bloque de código
// Print statement
// String: X Break en for clásico: incorrecto
MOV x9, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 66
MOV w0, #66
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
label_73:
// Print statement
// String: \n==== Continue ====
MOV x10, x10
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
// Pusing char 67
MOV w0, #67
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
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
STR x10, [SP, #-8]!
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'puntosContinue' almacenada en el stack.
// Print statement
// String: Continue en for tipo while
MOV x11, x10
// Pusing char 67
MOV w0, #67
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
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
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
// Asignación a variable: contador
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'impares' almacenada en el stack.
// For-While statement
label_74:
// Relational
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LT
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_75
// Bloque de código
// Asignación a variable: contador
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
// If statement
// Equality / Inequality
// MulDiv
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x1, #0
UDIV x22, x0, x1
MSUB x0, x22, x1, x0
STR x0, [SP, #-8]!
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_76
// Bloque de código
// Continue statement
B label_74
label_76:
// Asignación a variable: impares
// AddSub
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
B label_74
label_75:
// Fin del for-while
// Print statement
// String: Números impares:
MOV x12, x10
// Pusing char 78
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 63
MOV w0, #63
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 112
MOV w0, #112
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
// Pusing char 58
MOV w0, #58
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
MOV w0, #32
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
// If statement
// Equality / Inequality
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 25
MOV x0, #25
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_77
// Bloque de código
// Asignación a variable: puntosContinue
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
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: OK Continue en for tipo while: correcto
MOV x13, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
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
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
B label_78
label_77:
// Bloque de código
// Print statement
// String: X Continue en for tipo while: incorrecto
MOV x14, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
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
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 119
MOV w0, #119
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
label_78:
// Print statement
// String: \nContinue en for clásico
MOV x15, x10
// Pusing char 10
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
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
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 102
MOV w0, #102
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
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'pares' almacenada en el stack.
// For statement
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
// Declaración variable implícita 'i' almacenada en el stack.
label_79:
// Relational
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 10
MOV x0, #10
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, LT
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_80
// Bloque de código
// If statement
// Equality / Inequality
// MulDiv
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 2
MOV x0, #2
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x1, #0
UDIV x22, x0, x1
MSUB x0, x22, x1, x0
STR x0, [SP, #-8]!
// Constant : 0
MOV x0, #0
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, NE
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_82
// Bloque de código
// Continue statement
B label_81
label_82:
// Asignación a variable: pares
// AddSub
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #8
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
label_81:
// Post-incremento de variable 'i'
MOV x0, #0
ADD x0, sp, x0
LDR x1, [x0, #0]
ADD x1, x1, 1
STR x1, [x0, #0]
B label_79
label_80:
// Fin del for
// Remover 8 bytes del stack
MOV x0, #8
ADD sp, sp, x0
// Fin del for
// Print statement
// String: Números pares:
MOV x9, x10
// Pusing char 78
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 63
MOV w0, #63
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 109
MOV w0, #109
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
// Pusing char 112
MOV w0, #112
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
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
// If statement
// Equality / Inequality
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 20
MOV x0, #20
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
CMP x0, x1
CSET x0, EQ
STR x0, [SP, #-8]!
LDR x0, [SP], #8
CBZ x0, label_83
// Bloque de código
// Asignación a variable: puntosContinue
// AddSub
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant : 2
MOV x0, #2
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
// Print statement
// String: OK Continue en for clásico: correcto
MOV x10, x10
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 75
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
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
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 58
MOV w0, #58
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
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
B label_84
label_83:
// Bloque de código
// Print statement
// String: X Continue en for clásico: incorrecto
MOV x11, x10
// Pusing char 88
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
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
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 102
MOV w0, #102
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
// Pusing char 58
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
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
// Pusing char 114
MOV w0, #114
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
// Pusing char 99
MOV w0, #99
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
label_84:
// Asignación a variable: puntos
// AddSub
// AddSub
// AddSub
// AddSub
// AddSub
// AddSub
MOV x0, #168
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #144
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #136
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #72
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x1, [SP], #8
LDR x0, [SP], #8
ADD x0, x0, x1
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV x1, #176
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Expresión de declaración
LDR x0, [SP], #8
// Print statement
// String: \n=== Tabla de Resultados ===
MOV x12, x10
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 84
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 98
MOV w0, #98
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 82
MOV w0, #82
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
// Pusing char 117
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// String: +--------------------------+--------+-------+
MOV x13, x10
// Pusing char 43
MOV w0, #43
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
// Pusing char 43
MOV w0, #43
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
// Pusing char 43
MOV w0, #43
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
// Pusing char 45
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 43
MOV w0, #43
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
// Print statement
// String: | Característica           | Puntos | Total |
MOV x14, x10
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
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
// Pusing char 63
MOV w0, #63
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 80
MOV w0, #80
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
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 84
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 111
MOV w0, #111
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
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
// String: +--------------------------+--------+-------+
MOV x15, x10
// Pusing char 43
MOV w0, #43
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
// Pusing char 43
MOV w0, #43
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
// Pusing char 43
MOV w0, #43
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
// Pusing char 45
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 43
MOV w0, #43
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
// Print statement
// String: | Manejo de entornos       | 
MOV x9, x10
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 77
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 101
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 106
MOV w0, #106
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
// Pusing char 110
MOV w0, #110
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
STR x9, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
MOV x0, #168
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String:     | 3     |
MOV x10, x10
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 51
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x10, [SP, #-8]!
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
// String: | If / Else                | 
MOV x11, x10
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 73
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 102
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 47
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 69
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
MOV w0, #32
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
MOV x0, #136
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String:     | 3     |
MOV x12, x10
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 51
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
// String: | For Tipo While           | 
MOV x13, x10
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 84
MOV w0, #84
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
// Pusing char 87
MOV w0, #87
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 104
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 105
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 108
MOV w0, #108
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
MOV w0, #32
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
MOV x0, #128
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String:     | 4     |
MOV x14, x10
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 52
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x14, [SP, #-8]!
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
// String: | For Clásico              | 
MOV x15, x10
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 70
MOV w0, #70
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
STR x15, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
MOV x0, #72
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String:     | 3     |
MOV x9, x10
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 51
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
// String: | Switch/Case              | 
MOV x10, x10
// Pusing char 124
MOV w0, #124
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
// Pusing char 47
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 97
MOV w0, #97
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
STR x10, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
MOV x0, #64
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String:     | 3     |
MOV x11, x10
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 51
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
// String: | Break                    | 
MOV x12, x10
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 66
MOV w0, #66
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
MOV w0, #32
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
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String:     | 3     |
MOV x13, x10
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 51
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
// Print statement
// String: | Continue                 | 
MOV x14, x10
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 67
MOV w0, #67
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
// Pusing char 110
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 117
MOV w0, #117
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
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
STR x14, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String:     | 3     |
MOV x15, x10
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 51
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
// Print statement
// String: +--------------------------+--------+-------+
MOV x9, x10
// Pusing char 43
MOV w0, #43
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
// Pusing char 43
MOV w0, #43
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
// Pusing char 43
MOV w0, #43
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
// Pusing char 45
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 43
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 0
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
STR x9, [SP, #-8]!
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
// String: | TOTAL                    | 
MOV x10, x10
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 84
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 79
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 84
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 65
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 76
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
STR x10, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_string_raw
MOV x9, x10
MOV w0, #32
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
MOV x0, #176
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
LDR x0, [SP], #8
MOV X0, x0
BL print_integer_raw
MOV x9, x10
MOV w0, #32
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
// String:    | 25    |
MOV x11, x10
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 50
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 53
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 32
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 124
MOV w0, #124
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
// String: +--------------------------+--------+-------+
MOV x12, x10
// Pusing char 43
MOV w0, #43
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
// Pusing char 43
MOV w0, #43
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
// Pusing char 43
MOV w0, #43
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
// Pusing char 45
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pusing char 43
MOV w0, #43
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



//--------------------------------------------------------------
// concat_strings - Concatena dos strings null-terminated
// 
// Entrada:
//   X0 - Dirección del primer string (str1)
//   X1 - Dirección del segundo string (str2)
// Salida:
//   X0 - Dirección del nuevo string en el heap (X10)
//--------------------------------------------------------------
.p2align 2
concat_strings:
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!

    // Guardar direcciones de los strings
    mov x19, x0   // str1
    mov x20, x1   // str2
    mov x21, x10  // Inicio del nuevo string

    // Copiar str1
copy_str1:
    ldrb w22, [x19], #1
    cbz w22, end_str1
    strb w22, [x10], #1
    b copy_str1

end_str1:
    // Copiar str2
copy_str2:
    ldrb w22, [x20], #1
    cbz w22, end_str2
    strb w22, [x10], #1
    b copy_str2

end_str2:
    // Añadir null-terminator
    strb wzr, [x10], #1

    // Devolver dirección del nuevo string
    mov x0, x21

    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret









    
