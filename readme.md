# ProjetoEng1_RepManager 🚀

Bem-vindo ao **ProjetoEng1_RepManager**, um projeto de demonstração criado para explorar práticas essenciais de Engenharia de Software, especificamente o uso avançado do **Git** (através da metodologia Gitflow) e **Desenvolvimento Dirigido por Testes (TDD)** em C++.

## 🎯 Objetivos do Projeto

Este repositório foi construído seguindo os tutoriais propostos pelo TerraLAB. Seus principais objetivos são:
- Demonstrar o rastreamento de mudanças de código através do Git.
- Aplicar o **Gitflow Workflow** gerenciando ramos (`master`, `staging`, `develop` e `features`).
- Demonstrar a integração de testes automatizados utilizando TDD.
- Utilizar um Makefile para orquestrar a compilação do código fonte e dos testes, gerenciando artefatos binários de forma eficiente.

## 📂 Estrutura de Diretórios

O projeto segue a padronização solicitada:

```text
ProjetoEng1_RepManager/
├── bin/      # Diretório para os binários gerados pela compilação (ignorados pelo Git)
├── doc/      # Diretório para documentações
├── include/  # Diretório para arquivos de cabeçalho públicos (.hpp/.h)
├── src/      # Diretório para os códigos fontes da aplicação (.cpp e .hpp internos)
└── test/     # Diretório para os testes unitários e de regressão
```

## 🛠️ Tecnologias Utilizadas
- **C++**: Linguagem principal do projeto.
- **Make**: Para automação de build.
- **Git**: Controle de versão.
- **GitHub Projects**: Utilizado para gerenciar Issues nos boards ("sprint backlog", "doing", "waiting acceptance", "done").

## 🚀 Como Compilar e Executar

Este projeto utiliza um `Makefile` configurado na raiz para automatizar a compilação.

### Compilar a aplicação principal
Para compilar a aplicação e gerar o executável no diretório `bin/`, execute:
```bash
make
```
O executável principal pode ser rodado com:
```bash
./bin/app.exe
```

### Compilar e Rodar os Testes (Regressão)
Para compilar e executar o binário de testes (`testeRegressivo.exe`), utilize:
```bash
make test
```

## 📝 Regras de Contribuição e Gitflow
Todas as novas funcionalidades devem ser criadas a partir do ramo `develop` (ex: `feat-nomeDaFuncionalidade`). Uma vez que o código e os testes estejam passando (Green), as mudanças podem ser mescladas de volta ao `develop`, passando posteriormente para `staging` e por fim `master` nas releases.

---
Feito com dedicação para as práticas da Engenharia de Software.
