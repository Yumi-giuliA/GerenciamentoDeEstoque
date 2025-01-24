<%--  
    Document   : excluirProd
    Created on : 21 de nov. de 2024, 16:05:47
    Author     : giulia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="modelDAO.ProdutoDAO"%>

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
        <div class="mensagem">
            <%
                try {
                    int id = Integer.parseInt(request.getParameter("id"));

                    Produto prod = new Produto();
                    prod.setId(id);

                    ProdutoDAO prodDAO = new ProdutoDAO();
                    if (prodDAO.exProdId(prod)) {
                        out.println("<p><b>Produto excluído com sucesso!</b></p>");
                    } else {
                        out.println("<p>Produto não excluído!!!</p>");
                    }
                } catch (NumberFormatException e) {
                    out.println("<p>Erro: ID inválido!</p>");
                } catch (Exception e) {
                    out.println("<p>Erro ao excluir o produto: " + e.getMessage() + "</p>");
                }
            %>
        </div>
        <a class="back-btn" href="../index.html"> < voltar</a>
    </body>
</html>
