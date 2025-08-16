section .data
  odd db  "odd", 0xA
  odd_len equ $ - odd

  even db  "even", 0xA
  even_len equ $ - even

section .text
  global _start

;------------------
; Function: _oddoreven
; Input: number in eax
; Prints: "odd" or "even"
; -----------------
_oddoreven:
  push ebp
  mov ebp, esp
  test eax, 1
  jz .printEven

.printOdd:
  mov eax, 4
  mov ebx, 1
  mov ecx, odd
  mov edx, odd_len
  int 0x80
  jmp .done

.printEven:
  mov eax, 4
  mov ebx, 1
  mov ecx, even
  mov edx, even_len
  int 0x80

.done:
  mov esp, ebp
  pop ebp
  ret
;------------------
; Program entry point
;------------------
_start:
  mov eax, 7
  call _oddoreven

exit:
  mov eax, 1
  xor ebx, ebx
  int 0x80
