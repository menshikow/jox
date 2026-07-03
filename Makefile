.PHONY: build run clean test

JAVAC = javac
JAVA  = java
SRC   = lox
OUT   = lox.jar

FLAGS = -Xlint:all -g

build:
	@$(JAVAC) $(FLAGS) -d build/classes -sourcepath $(SRC) $(SRC)/*.java
	@cd build/classes && jar cfe ../../$(OUT) lox.Lox .

run: build
	@$(JAVA) -jar $(OUT)

test: build
	@$(JAVA) -jar $(OUT) test.lox 2>/dev/null || true

clean:
	@rm -rf build/classes $(OUT)
