include irvine32.inc
Title Mul_Div
.data
    num           dw  149
    divisor       dw 12
    remMsg    db "The remainder is ",0
    qoutMsg   db "The qoutient is ",0
    prodMsg  db "The Product is ",0
.code
  main proc
  sub         edx,edx
  movsx    eax,num
  div         divisor
  push      edx;  REMAINDER PUT IN STACK
  mov       edx,offset qoutMsg
  call        writestring
  call        writedec
  call        crlf
  mov       edx,offset remMsg
  call        writestring
  pop       eax
  call       writedec
  call       crlf
;==========MULTIPLY=============
  movsx  eax,num
  mul      divisor
  mov     edx,offset prodMsg
  call      writestring
  call      writedec
  call      crlf
exit
main endp
end main



    
