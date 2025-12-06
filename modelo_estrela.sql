– SQL Schema for Star Model (Financial Sample)

CREATE TABLE D_Produtos ( ID_Produto INT PRIMARY KEY, Produto
VARCHAR(255), Media_Unidades_Vendidas DECIMAL(18,2), Media_Valor_Vendas
DECIMAL(18,2), Mediana_Valor_Vendas DECIMAL(18,2), Max_Valor_Venda
DECIMAL(18,2), Min_Valor_Venda DECIMAL(18,2) );

CREATE TABLE D_Produtos_Detalhes ( ID_Produto VARCHAR(255), Produto
VARCHAR(255), Discount_Band VARCHAR(255), Sale_Price DECIMAL(18,2),
Units_Sold INT, Manufacturing_Price DECIMAL(18,2) );

CREATE TABLE D_Descontos ( ID_Produto VARCHAR(255), Discount
DECIMAL(18,2), Discount_Band VARCHAR(255) );

CREATE TABLE D_Detalhes ( ID_Produto VARCHAR(255), Segment VARCHAR(255),
Country VARCHAR(255), Sales DECIMAL(18,2), Profit DECIMAL(18,2) );

CREATE TABLE D_Calendario ( Date DATE PRIMARY KEY, Ano INT, Mes INT,
Nome_Mes VARCHAR(50), Trimestre VARCHAR(10) );

CREATE TABLE F_Vendas ( SK_ID INT PRIMARY KEY, ID_Produto VARCHAR(255),
Produto VARCHAR(255), Units_Sold INT, Sales_Price DECIMAL(18,2),
Discount_Band VARCHAR(255), Segment VARCHAR(255), Country VARCHAR(255),
Sales DECIMAL(18,2), Profit DECIMAL(18,2), Date DATE );
