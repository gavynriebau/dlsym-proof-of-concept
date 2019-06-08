
all: vuln

exploit.so: exploit.c
	clang -ldl -fPIC -shared exploit.c -o exploit.so

vuln: exploit.so vuln.c
	clang -o vuln -g vuln.c

run: vuln
	LD_PRELOAD=./exploit.so ./vuln

clean:
	rm *.so vuln


