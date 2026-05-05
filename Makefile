# Compilador e Flags
CXX = g++
CXXFLAGS = -Wall -Iinclude -Isrc -std=c++11

# Diretórios
SRC_DIR = src
BIN_DIR = bin
TEST_DIR = test

# Arquivos fontes (main principal)
SRCS = $(wildcard $(SRC_DIR)/*.cpp)
OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(BIN_DIR)/%.o, $(SRCS))

# Nome do executável principal
TARGET = $(BIN_DIR)/app.exe

# Regra default
all: $(TARGET)

# Compilar o executável principal
$(TARGET): $(OBJS)
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Compilar objetos
$(BIN_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

# Target de Testes
TEST_TARGET = $(BIN_DIR)/testeRegressivo.exe
TEST_SRCS = $(TEST_DIR)/main.cpp $(filter-out $(SRC_DIR)/main.cpp, $(wildcard $(SRC_DIR)/*.cpp))
TEST_OBJS = $(patsubst $(SRC_DIR)/%.cpp, $(BIN_DIR)/%.o, $(filter-out $(SRC_DIR)/main.cpp, $(wildcard $(SRC_DIR)/*.cpp))) $(BIN_DIR)/test_main.o

test: $(TEST_TARGET)

$(TEST_TARGET): $(TEST_OBJS)
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(BIN_DIR)/test_main.o: $(TEST_DIR)/main.cpp
	@mkdir -p $(BIN_DIR)
	$(CXX) $(CXXFLAGS) -c -o $@ $<

# Limpar binários
clean:
	rm -rf $(BIN_DIR)/*

.PHONY: all clean test
