# 🗄️ Banco de Dados – Exercícios Práticos (Generation / MySQL)

Repositório contendo uma coletânea de **atividades práticas de Banco de Dados em MySQL**, desenvolvidas para fortalecer conceitos essenciais da modelagem e manipulação de dados.  
Aqui você encontrará bancos completos, tabelas bem estruturadas, relacionamentos, inserção de dados e consultas SQL — tudo organizado por atividades separadas.  

<!-- Badges -->
<p align="center">
  <img src="https://img.shields.io/github/repo-size/LarissaRabello/mysql-exercicios?style=for-the-badge&color=blue" />
  <img src="https://img.shields.io/github/languages/top/LarissaRabello/mysql-exercicios?style=for-the-badge&color=yellow" />
  <img src="https://img.shields.io/github/last-commit/LarissaRabello/mysql-exercicios?style=for-the-badge&color=orange" />
  <img src="https://img.shields.io/github/languages/count/LarissaRabello/mysql-exercicios?style=for-the-badge&color=brightgreen" />
</p>

---

## 🎓 **Sobre o Repositório**

Este repositório foi criado para praticar e consolidar conhecimentos fundamentais de SQL, incluindo:

- 🏗️ Criação de bancos de dados  
- 🧱 Criação de tabelas  
- 🔑 Definição de chaves primárias e estrangeiras  
- 📥 Inserção de dados  
- 🔍 Consultas SQL com `WHERE`, `BETWEEN`, `LIKE`  
- 🔗 INNER JOIN entre tabelas  
- 📦 Organização e boas práticas  

Cada atividade está em seu próprio arquivo `.sql`, com todas as queries solicitadas em cada exercício.

---

## 📚 **Atividades Incluídas**

### **📌 Atividade 1 — Criando Estrutura Inicial**
- Banco simples com categorias e produtos.  
- Conceito de chave primária e estrangeira.  
- Consultas básicas com filtros e LIKE.

---

### **🍕 Atividade 2 — Pizzaria Legal**
**Banco:** `db_pizzaria_legal`  
Tabelas:  
- `tb_categorias`  
- `tb_pizzas`

Inclui:  
- Criação de pizzas 🍕 com preços variados.  
- Consultas com intervalos, LIKE e INNER JOIN.  
- Relação categoria → pizza.

---

### **💊 Atividade 3 — Farmácia Bem-Estar**
**Banco:** `db_farmacia_bem_estar`  
Tabelas:  
- `tb_categorias`  
- `tb_produtos`

Inclui:  
- Produtos farmacêuticos.  
- Filtros por preço, intervalo e LIKE.  
- INNER JOIN mostrando categoria + produto.

---

### **🥩🥕 Atividade 4 — Açougue “Cidade das Carnes” ou Hortifruti “Cidade dos Vegetais”**
**Banco:** `db_cidade_das_carnes` ou `db_cidade_dos_vegetais`  
Tabelas:  
- `tb_categorias`  
- `tb_produtos`

Inclui:  
- Produtos alimentícios (carnes, frutas, legumes, aves).  
- Consultas diversas.  
- JOIN filtrado por categoria (ex.: frutas 🍎 ou aves 🐔).

---

### **🏗️ Atividade 5 — Materiais de Construção “Construindo Vidas”**
**Banco:** `db_construindo_vidas`  
Tabelas:  
- `tb_categorias`  
- `tb_produtos`

Inclui:  
- Produtos como ferramentas, hidráulica, construção.  
- Filtros por valor ( > 100 e BETWEEN ).  
- LIKE e INNER JOIN.  
- JOIN filtrado por categoria (ex.: hidráulica 🚰).

---

### **🎓 Atividade 6 — Plataforma EAD “Curso da Minha Vida”**
**Banco:** `db_curso_da_minha_vida`  
Tabelas:  
- `tb_categorias`  
- `tb_cursos`

Inclui:  
- Cursos online com valores Padrão / Premium.  
- SELECT com LIKE usando a letra "J".  
- INNER JOIN simples + filtrado (ex.: categoria Java ☕).

---

## 📁 **Estrutura do Repositório**
```
📦 mysql-exercicios
┗ 📂 Exercícios
┣ 📄 atividade_1.sql
┣ 📄 atividade_2.sql
┣ 📄 atividade_3.sql
┣ 📄 atividade_4.sql
┣ 📄 atividade_5.sql
┣ 📄 atividade_6.sql
┗ 📄 README.md
```


---

## 🚀 **Tecnologias Utilizadas**

- 🐬 **MySQL Server**  
- 🖥️ **MySQL Workbench**  
- 📄 **Scripts SQL**  
- 🧩 Modelagem Relacional  

---

## 🎯 **Objetivo do Repositório**

Este repositório foi criado com foco em **aprendizagem prática**, oferecendo exercícios reais que simulam cenários comuns de backend e análise de dados.  
Uma ótima base para quem deseja aprender SQL do zero ou revisar comandos essenciais para entrevistas e ambientes profissionais.

---

## 📝 **Autora**

---


> Coleção de exercícios práticos em MySQL, incluindo criação de bancos, tabelas, relações e consultas SQL. Um repositório completo para aprender e treinar Banco de Dados de forma organizada, clara e profissional.
