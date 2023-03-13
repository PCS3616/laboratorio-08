< STRCMP
< STRCMP_A
< STRCMP_B

@ /0000
            JP MAIN

@ /0100
PASS        K /0   ; 0 mean sucess

FAIL        LV  /1
            MM  PASS
            HM  MAIN

MAIN        LV  MAIN
            ; test CASE_1
            LV  CASE_1_A
            MM  STRCMP_A
            LV  CASE_1_B
            MM  STRCMP_B
            SC  STRCMP
            SB  CASE_1_EXPECTED
            JZ  FAIL

            ; test CASE_1
            LV  CASE_1_A
            MM  STRCMP_A
            LV  CASE_1_B
            MM  STRCMP_B
            SC  STRCMP
            SB  CASE_1_EXPECTED
            JZ  FAIL

            ; test CASE_1
            LV  CASE_1_A
            MM  STRCMP_A
            LV  CASE_1_B
            MM  STRCMP_B
            SC  STRCMP
            SB  CASE_1_EXPECTED
            JZ  FAIL

            HM  MAIN


@ /0800
CASE_1_EXPECTED K /FFFF

CASE_1_A        K /BATA
                K /TA00

CASE_1_B        K /BATA
                K /TA20
                K /D0CE
                K /0000

CASE_2_EXPECTED K /0001

CASE_2_A        K /D0CE
                K /0000
CASE_2_B        K /BATA
                K /TA00


CASE_3_EXPECTED K /0000

CASE_3_A        K /D0CE
                K /2200
CASE_3_B        K /D0CE
                K /2200
