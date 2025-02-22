all:
	@echo "Por favor especifique um target. As opções são: strlen, strcmp, clean"

strlen:
	mvn-cli assemble -i autogradle/test_len.asm > submission/program.int
	mvn-cli assemble -i submission/string.asm > submission/string.int
	mvn-cli link -i submission/program.int -i submission/string.int --complete > submission/program.lig
	mvn-cli relocate -i submission/program.lig --base 0 > submission/program.mvn

strcmp:
	mvn-cli assemble -i autogradle/test_cmp.asm > submission/program.int
	mvn-cli assemble -i submission/string.asm > submission/string.int
	mvn-cli link -i submission/program.int -i submission/string.int --complete > submission/program.lig
	mvn-cli relocate -i submission/program.lig --base 0 > submission/program.mvn

clean:
	rm -f submission/*.int submission/*.lig submission/*.mvn
