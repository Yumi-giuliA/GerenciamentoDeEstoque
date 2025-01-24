<%-- 
    Document   : altProd
    Created on : 21 de nov. de 2024, 15:49:23
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
        <link rel="stylesheet" href="alterar.css">
        <link rel="stylesheet" href="../voltar.css">
        <title>Produtos</title>
    </head>
    <body>
        <%@include file="../header.html" %>
        <main class="main">
            <%
                int id = Integer.parseInt(request.getParameter("id"));

                Produto produto = new Produto();
                produto.setId(id);

                ProdutoDAO prodDAO = new ProdutoDAO();
                Produto produ = prodDAO.consProduto(produto);

                if (produ != null) {
            %>
            <div class="title-wrapper">
            </div>
            <form name="altProd" method="post" action="updateProd.jsp" class="form-container">
                <div class="title-wrapper">
                    <h2 class="title-label">ID</h2>
                    <input type="text" id="id" name="id" value="<%= produ.getId()%>" readonly="true" class="input"/>
                </div>
                <div class="title-wrapper margin-top">
                    <h2 class="title-label">Nome</h2>
                    <input type="text" id="nome" name="nome" value="<%= produ.getNome()%>" class="input"/>
                </div>
                <div class="title-wrapper margin-top">
                    <h2 class="title-label">Marca</h2>
                    <input type="text" id="marca" name="marca" value="<%= produ.getMarca()%>" class="input"/>
                </div>
                <div class="title-wrapper margin-top">
                    <h2 class="title-label">Preço</h2>
                    <input type="number" id="preco" name="preco" value="<%= produ.getPreco()%>" min="0" step="any" class="input"/>
                </div>
                <button type="submit" class="send-btn">Salvar</button>
            </form>
            <%
            } else {
            %>
            <div class="title-wrapper">
                <h2 class="title-label">FALHA AO TENTAR ACHAR PRODUTO</h2>
                <a class="back-btn" href="../index.html"> < voltar</a>
            </div>
            <% }%>
        </main>
    </body>
</html>
