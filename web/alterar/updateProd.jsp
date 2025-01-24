<%--  
    Document   : updateProd
    Created on : 21 de nov. de 2024, 15:49:23
    Author     : giulia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="modelDAO.ProdutoDAO"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../reset.css">
        <link rel="stylesheet" href="../index.css">
        <link rel="stylesheet" href="../voltar.css">       
        <title>Produtos</title>
    </head>
    <body>
        <%
            String mensagem;
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                String nome = request.getParameter("nome");
                String marca = request.getParameter("marca");
                double preco = Double.parseDouble(request.getParameter("preco"));

                Produto prod = new Produto();
                prod.setId(id);
                prod.setNome(nome);
                prod.setMarca(marca);
                prod.setPreco(preco);

                ProdutoDAO prodDAO = new ProdutoDAO();

                if (prodDAO.altProduto(prod)) {
                    mensagem = "Produto alterado com sucesso!!!";
                } else {
                    mensagem = "Produto não alterado!!!";
                }
            } catch (NumberFormatException e) {
                mensagem = "Erro ao tentar modificar o produto.";
            } catch (Exception e) {
                mensagem = "Erro ao processar: " + e.getMessage();
            }
        %>
        <div class="mensagem">
            <p><%= mensagem%></p>
        </div>

        <a class="back-btn" href="../index.html"> < voltar</a>
    </body>
</html>
