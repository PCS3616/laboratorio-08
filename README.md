# PCS3616 - Laboratório 8 - ASM 2

Na aula de hoje vamos criar uma biblioteca de stings para a MVN utilizando a ligação parcial.
O experimento foi inspirado na biblioteca [`string.h`](https://cplusplus.com/reference/cstring/) do gcc.

# Definições
Uma string é um vetor de caracteres seguindo conforme a tabela ASCII terminados
por um `NULL` (`'\0'` ou `0x00`).

# Exercicios

## `STRLEN`
Implemente uma função `STRLEN` que recebe no acumulador o endereço de uma string
e retorna no acumulador o tamanho em bytes dessa string. O rótulo dessa *subrotina* (`STRLEN`)
deve ser exportado em seu programa.

Ref: [strlen](https://cplusplus.com/reference/cstring/strlen/)

## `STRCMP`
Implemente uma função `STRCMP` que recebe dois argumentos `STRCMP_A`, `STRCMP_B`
com posições de string que serão comparadas, caracter a caracter seguindo o
valor deles na tabela ASCII. Caso a `STRCMP_A` seja maior que `STRCMP_B` retorna
`1`, se for igual `0`, se for menor `-1` (em complemento de 2). O rótulo dessa *subrotina* (`STRCMP`)
e suas duas entradas(`STRCMP_A` e `STRCMP_B`) devem ser exportados em seu programa.


Ref: [strcmp](https://cplusplus.com/reference/cstring/strcmp/)

# Entrega
Arquivo `string.asm` com o codigo relocavel utilizandos os labels indicados
acima.

## Links
- [`mvn-cli`](https://github.com/PCS3616/mvn-rs)

## Run

Um Makefile foi fornecido para ajudar nos seus testes.

```
make strlen     # Para testar sua função STRLEN
make strcmp     # Para testar sua função STRCMP
make clean      # Para limpar sua pasta submission/
```
