/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelDAO;

import model.Produto;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import util.ConectaDB;

/**
 *
 * @author gabriel, giulia, guilherme, gustavo, kamille
 */
public class ProdutoDAO {

    public boolean insProduto(Produto p_prod) throws ClassNotFoundException {
        Connection conexao = null;
        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            String sql = "INSERT INTO produto(nome, marca, preco) VALUES ('"
                    + p_prod.getNome() + "', '"
                    + p_prod.getMarca() + "', "
                    + p_prod.getPreco() + ")";

            stmt.executeUpdate(sql);
            conexao.close();
            return true;
        } catch (SQLException ex) {
            System.out.println("Exception: " + ex.toString());
            return false;
        }
    }

    public Produto consProdutoPorId(Produto produto) throws ClassNotFoundException {
        Connection conexao = null;
        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            String sql = "SELECT * FROM produto WHERE nome = '" + produto.getNome() + "'";
            ResultSet rs = stmt.executeQuery(sql);
            int n_reg = 0;
            while (rs.next()) {
                produto.setId(Integer.parseInt(rs.getString("id")));
                produto.setNome(rs.getString("nome"));
                produto.setMarca(rs.getString("marca"));
                produto.setPreco(rs.getDouble("preco"));
                n_reg++;
            }
            conexao.close();

            return n_reg == 0 ? null : produto;
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex);
            return null;
        }
    }

    public Produto consProduto(Produto produto) throws ClassNotFoundException {

        Connection conexao = null;
        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            String sql = "SELECT * from produto where id = '" + produto.getId() + "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {
                produto.setId(Integer.parseInt(rs.getString("id")));
                produto.setNome(rs.getString("nome"));
                produto.setMarca(rs.getString("marca"));
                produto.setPreco(rs.getDouble("preco"));
                n_reg++;
            }
            conexao.close();

            if (n_reg == 0) {
                return null;
            } else {
                return produto;
            }
        } catch (SQLException ex) {
            System.out.println("Erro:" + ex);
            return null;
        }
    }

    public List<Produto> consListaProdutos() throws ClassNotFoundException {
        List<Produto> lista = new ArrayList<>();
        Connection conexao = null;
        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            String sql = "SELECT * FROM produto";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                Produto produto = new Produto();
                produto.setId(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setMarca(rs.getString("marca"));
                produto.setPreco(rs.getDouble("preco"));
                lista.add(produto);
            }
            conexao.close();

            return lista;
        } catch (SQLException ex) {
            System.out.println("Erro: " + ex);
            return null;
        }
    }

    public boolean exProdId(Produto produto) throws ClassNotFoundException {
        Connection conexao = null;
        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            String sql = "DELETE from produto where id = " + produto.getId();
            stmt.executeUpdate(sql);
            conexao.close();
            return true;

        } catch (SQLException ex) {
            System.out.println("Erro:" + ex);
            return false;
        }
    }

    public boolean altProduto(Produto produto) throws ClassNotFoundException {
        Connection conexao = null;
        try {
            conexao = ConectaDB.conectar();
            String sql = "UPDATE produto SET nome = ?, marca = ?, preco = ? WHERE id = ?";
            PreparedStatement stmt = conexao.prepareStatement(sql);

            stmt.setString(1, produto.getNome());
            stmt.setString(2, produto.getMarca());
            stmt.setDouble(3, produto.getPreco());
            stmt.setInt(4, produto.getId());

            int rowsUpdated = stmt.executeUpdate();
            conexao.close();

            return rowsUpdated > 0;
        } catch (SQLException ex) {
            System.out.println("Erro ao atualizar produto: " + ex);
            return false;
        }
    }
}
