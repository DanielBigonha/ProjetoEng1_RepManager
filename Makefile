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

# Limpar binários
clean:
	rm -rf $(BIN_DIR)/*

.PHONY: all clean
