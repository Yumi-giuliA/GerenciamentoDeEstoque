<%--  
    Document   : consulta  
    Created on : 21 de nov. de 2024, 16:10:02  
    Author     : gabriel, giulia, guilherme, gustavo, kamille  
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
        <link rel="stylesheet" href="consulta.css">
        <link rel="stylesheet" href="../voltar.css">
        <title>Produtos</title>
    </head>
    <body>  
        <%@include file="../header.html" %>
        <main class="main">
            <%
                String ident = request.getParameter("id");
                int id = 0;

                if (ident != null && !ident.isEmpty()) {
                    try {
                        id = Integer.parseInt(ident);
                    } catch (NumberFormatException e) {
                        out.println("<p class='erro'>ID inválido!</p>");
                    }
                }

                Produto produto = new Produto();
                produto.setId(id);

                ProdutoDAO produtoDAO = new ProdutoDAO();
                Produto resultado = produtoDAO.consProduto(produto);

                if (resultado != null) {
            %>
            <div class="table">
                <p class="cell"><b>ID</b></p>
                <p class="cell"><%= resultado.getId()%></p>
                <p class="cell"><b>Nome</b></p>
                <p class="cell"><%= resultado.getNome()%></p>
                <p class="cell"><b>Marca</b></p>
                <p class="cell"><%= resultado.getMarca()%></p>
                <p class="cell"><b>Preço</b></p>
                <p class="cell"><%= resultado.getPreco()%></p>
            </div>
            <%
                } else if (ident != null) {
                    out.println("<p class='erro'>Produto não encontrado!</p>");
                }
            %>
            <a class="back-btn" href="../index.html"> < voltar</a>
        </main>
    </body>
</html>
