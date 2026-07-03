.PHONY: build run clean

SRC = lox
OUT = lox.jar

build:
	@javac -d build/classes -sourcepath $(SRC) $(SRC)/*.java
	@cd build/classes && jar cfe ../../$(OUT) lox.Lox .

run: build
	@java -jar $(OUT)

clean:
	@rm -rf build/classes build/classes $(OUT)
