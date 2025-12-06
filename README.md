
# Modelo Estrela - Financial Sample (Power BI)

Este projeto implementa uma modelagem dimensional (Star Schema) utilizando a base **Financial Sample**, 
com criação de tabelas Dimensão e Fato via DAX e organização do modelo no Power BI.

---

## 📌 Estrutura do Modelo

O modelo foi dividido em:

### **🔹 Tabelas Dimensão**
- **D_Produtos**  
  Contém métricas agregadas por produto (média, mediana, máximo, mínimo).

- **D_Produtos_Detalhes**  
  Traz informações detalhadas do produto: Discount Band, Sale Price, Units Sold, Manufacturing Price.

- **D_Descontos**  
  Contém Discount e Discount Band por produto.

- **D_Detalhes**  
  Informações adicionais relacionadas às vendas, como Segment e Country.

- **D_Calendário**  
  Criada via função `CALENDAR()`, contendo colunas derivadas: Ano, Mês, Nome do Mês e Trimestre.

---

### **🔸 Tabela Fato**
A tabela **F_Vendas** concentra os dados numéricos e chaves vindas das dimensões:

- Units Sold  
- Sale Price  
- Sales  
- Profit  
- Segment  
- Country  
- Date  
- SK_ID (chave substituta gerada via `RANKX()`)

---

## 🧩 Diagrama do Modelo

O esquema estrela resultante é o seguinte:

🔽 Você pode visualizar a imagem em:
**diagrama_modelo_estrela.png**

---

## 🧪 Funções DAX Utilizadas

- `SUMMARIZE()`
- `SELECTCOLUMNS()`
- `ADDCOLUMNS()`
- `CALENDAR()`
- `RANKX()`
- `AVERAGE()`
- `MEDIAN()`
- `MAX()`
- `MIN()`
- `FORMAT()`
- `YEAR()`
- `MONTH()`

---

## 📁 Arquivos Incluídos

- `modelo_estrela.sql` → Estrutura SQL do modelo
- `diagrama_modelo_estrela.png` → Diagrama do modelo em estrela
- `README.md` → Este arquivo

---

## 📌 Como usar

1. Abra o arquivo `.pbix` criado no Power BI.
2. Importe as tabelas geradas por DAX.
3. Verifique os relacionamentos e construa visualizações baseadas nas dimensões.
4. Use este repositório como documentação para estudos ou processos seletivos.

---

## 👨‍💻 Autor
Projeto desenvolvido por João Guilherme como parte de um desafio de modelagem e transformação de dados com Power BI.

