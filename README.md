# PCS3616 - Laboratório 8 - ASM 2

Na aula de hoje vamos criar uma biblioteca de stings para a MVN utilizando a ligação parcial.
O experimento foi inspirado na biblioteca [`string.h`](https://cplusplus.com/reference/cstring/) do gcc.

# Definições
Uma string é um vetor de caracteres seguindo conforme a tabela ASCII terminados 
por dois `NULL` (`'\0'` ou `0x00`).

# Exercicios

## `STRLEN`
Implemente uma função `STRLEN` que recebe no acumulador o endereço de uma string 
e retorna no acumulador o tamanho em bytes dessa string.

Ref: [strlen](https://cplusplus.com/reference/cstring/strlen/)

## `STRCMP`
Implemente uma função `STRCMP` que recebe dois argumentos `STRCMP_A`, `STRCMP_B`
com posições de string que serão comparadas, caracter a caracter seguindo o 
valor deles na tabela ASCII. Caso a `STRCMP_A` seja maior que `STRCMP_B` retorna
`1`, se for igual `0`, se for menor `-1` (em complemento de 2).

Ref: [strcmp](https://cplusplus.com/reference/cstring/strcmp/)

# Entrega
Submeta um arquivo `string.lsm` ligado parcialmente com as funções acima, que será usado na correção.
Além disso submeta um arquivo `string.asm` com o código.
