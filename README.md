# 📚 Sistema de Gerenciamento de Biblioteca Universitária

## 📋 Descrição
Este projeto implementa um sistema completo de gerenciamento para bibliotecas universitárias, permitindo o controle de empréstimos de livros, cadastro de alunos, autores, categorias e cursos. O sistema também gerencia multas por atraso na devolução de exemplares.

## 🗃️ Estrutura do Banco de Dados
O banco de dados deste projeto foi projetado para atender às necessidades de uma biblioteca universitária com múltiplas categorias de livros e alunos de diversos cursos.

### 📊 Principais Entidades:
- **📕 Livros**: Armazena informações sobre os livros disponíveis na biblioteca
- **✍️ Autores**: Cadastro de autores dos livros
- **🏷️ Categorias**: Classificação temática dos livros
- **👨‍🎓 Alunos**: Informações sobre os alunos que utilizam a biblioteca
- **🎓 Cursos**: Cursos oferecidos pela universidade
- **📝 Empréstimos**: Registro de empréstimos de livros aos alunos
- **💰 Multas**: Controle de multas por atrasos na devolução

### 🔄 Relacionamentos:
- Um livro pertence a um autor e uma categoria principal
- Um aluno está matriculado em um curso
- Um empréstimo relaciona um aluno a um livro
- Uma multa está associada a um empréstimo e um aluno

## 📁 Estrutura do Repositório

```
.
├── ddl/                      # Scripts de Data Definition Language
│   ├── create_tables.sql     # Criação das tabelas
│   └── alter_tables.sql      # Alterações nas estruturas
├── dml/                      # Scripts de Data Manipulation Language
│   ├── insert_data.sql       # Inserções de dados
│   ├── update_delete.sql     # Atualizações e exclusões de dados
│   └── queries.sql           # Consultas SQL
└── README.md                 # Este arquivo
```

## ✨ Funcionalidades Implementadas

### 📝 Cadastros Básicos
- Cadastro de livros com título, ano de publicação, autor e categoria
- Cadastro de autores com nome e nacionalidade
- Cadastro de alunos com informações pessoais e acadêmicas
- Cadastro de cursos da universidade

### 🔄 Gestão de Empréstimos
- Registro de empréstimos com datas de retirada e devolução prevista
- Controle de devoluções realizadas
- Identificação de empréstimos em andamento e atrasados

### 💸 Sistema de Multas
- Cálculo automático de multas por atraso na devolução
- Registro de pagamento de multas
- Monitoramento de valores pendentes

## 🔍 Exemplos de Consultas Implementadas

O sistema oferece diversas consultas para facilitar a gestão da biblioteca:

1. 📊 Listagem de livros por período de publicação
2. 🔎 Busca de alunos por nome
3. 📋 Listagem de autores em ordem alfabética
4. 📈 Estatísticas sobre o acervo total
5. 💹 Média de valores de multas
6. 📑 Relatório de empréstimos por aluno
7. 🏷️ Categorização dos livros do acervo
8. 🔗 Associação entre livros e autores
9. 📊 Distribuição de alunos por curso

## 📐 Modelo de Dados

### 🔗 Relacionamentos chave:
- Cada `livro` possui um `autor_id` e um `categoria_id`
- Cada `aluno` está vinculado a um `curso_id`
- Cada `emprestimo` referencia um `aluno_id` e um `livro_id`
- Cada `multa` está associada a um `emprestimo_id` e um `aluno_id`

## ⚖️ Regras de Negócio
- Empréstimos possuem data prevista de devolução
- Multas são aplicadas em caso de atraso na devolução
- Alunos são identificados por matrícula única
- Cada livro pertence a uma categoria principal

### 🎥 Video explicativo
[https://youtu.be/RWd5WLDOl1Q](https://youtu.be/RWd5WLDOl1Q)
