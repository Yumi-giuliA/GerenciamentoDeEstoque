<%-- 
    Document   : consultaLista
    Created on : 21 de nov. de 2024, 16:45:24
    Author     : giulia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="modelDAO.ProdutoDAO"%>
<%@page import="java.util.List"%>

<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../reset.css">
        <link rel="stylesheet" href="../index.css">
        <link rel="stylesheet" href="lista.css">
        <link rel="stylesheet" href="../voltar.css">
        <title>Produtos</title>
    </head>
    <body>       
        <%@include file="../header.html" %>
        <%
            ProdutoDAO prodDAO = new ProdutoDAO();
            List<Produto> produtos = prodDAO.consListaProdutos();
        %>
        <main class="main">
            <% if (produtos != null && !produtos.isEmpty()) { %>
            <div class="table-head">
                <p class="bar-text table-text">Id</p>
                <p class="bar-text table-text">Nome</p>
                <p class="bar-text table-text">Marca</p>
                <p class="bar-text table-text">Preço</p>
            </div>

            <table class="table-body">
                <colgroup>
                    <col span="1" style="width: 25%;">
                    <col span="1" style="width: 25%;">
                    <col span="1" style="width: 25%;">
                    <col span="1" style="width: 25%;">
                </colgroup>
                <tbody>
                    <% for (Produto produto : produtos) {%>
                    <tr>
                        <td class="bar-text table-text table-cell"><%= produto.getId()%></td>
                        <td class="bar-text table-text table-cell"><%= produto.getNome()%></td>
                        <td class="bar-text table-text table-cell"><%= produto.getMarca()%></td>
                        <td class="bar-text table-text table-cell"><%= produto.getPreco()%></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <a class="back-btn" href="../index.html"> < voltar </a>
            <% } else { %>
            <p>Nenhum produto encontrado!</p>
            <a class="back-btn" href="../index.html"> < voltar </a>
            <% }%>
        </main>
    </body>
</html>
