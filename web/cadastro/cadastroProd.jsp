<%--  
    Document   : produto
    Created on : 21 de nov. de 2024, 15:59:52
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
        <link rel="stylesheet" href="cadastro.css">
        <link rel="stylesheet" href="../voltar.css">
        <title>Produtos</title>
    </head>
    <body>
        <div class="mensagem">
            <%
                try {
                    String nome = request.getParameter("nome");
                    String marca = request.getParameter("marca");
                    double preco = Double.parseDouble(request.getParameter("preco"));

                    Produto prod = new Produto();
                    prod.setNome(nome);
                    prod.setMarca(marca);
                    prod.setPreco(preco);

                    ProdutoDAO prodDAO = new ProdutoDAO();

                    if (prodDAO.insProduto(prod)) {
                        out.println("<p>Produto inserido com sucesso!!!</p>");
                    } else {
                        out.println("<p>Não foi possível inserir o produto!!!</p>");
                    }
                } catch (NumberFormatException e) {
                    out.println("<p>Erro: preencha todos os campos corretamente!</p>");
                } catch (Exception e) {
                    out.println("<p>Erro ao inserir o produto: " + e.getMessage() + "</p>");
                }
            %>
        </div>

        <a class="back-btn" href="../index.html"> < voltar</a>
    </body>
</html>
