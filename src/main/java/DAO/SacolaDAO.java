/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DTO.Sacolas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Lucas
 */
public class SacolaDAO {
            Connection conSacola;
            PreparedStatement prep;
            ResultSet rs;
            ArrayList<Sacolas> lista = new ArrayList<>();

            public void inserirProdutos(Sacolas objSacola) {
                String comando = "insert Into sacola(nome, descricao, qtd, preco) values (?, ?, ?, ?)";

                conSacola = new ConexaoDAO().conectaBD();

                try {
                    prep = conSacola.prepareStatement(comando);
                    prep.setString (1,objSacola.getNome());
                    prep.setString(2,objSacola.getDescricao());
                    prep.setInt(3,objSacola.getQtd());
                    prep.setDouble(4,objSacola.getPreco());
                    

                    prep.execute();
                    prep.close();

                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "SacolaDAO cadastrar " + e);

                }

            }


            public ArrayList<Sacolas> listarProdutos(){
                String comando = "select * from sacola";
                conSacola = new ConexaoDAO().conectaBD();
                try {
                    prep = conSacola.prepareStatement(comando);
                    rs = prep.executeQuery();

                    while (rs.next()) {
                        Sacolas objSacola = new Sacolas();
                        objSacola.setNome(rs.getString("nome"));
                        objSacola.setDescricao(rs.getString("descricao"));
                        objSacola.setQtd(rs.getInt("qtd"));
                        objSacola.setPreco(rs.getDouble("preco"));
                        

                        lista.add(objSacola);
                    }

                } catch (SQLException e) {
                    JOptionPane.showMessageDialog(null,"SacolaDao listar " + e);
                }
                return lista;
            }


            public void alterarProduto(Sacolas objSacola){
                String comando = "update sacola set nome = ?, descricao = ?, qtd = ?, preco = ? where nome = ?";

                conSacola = new ConexaoDAO().conectaBD();

                try {
                    prep = conSacola.prepareStatement(comando);
                    prep.setString (5,objSacola.getNome());
                    prep.setString(1,objSacola.getDescricao());
                    prep.setInt(2,objSacola.getQtd());
                    prep.setDouble(3,objSacola.getPreco());
                    prep.setString (1,objSacola.getNome());
 

                    prep.execute();
                    prep.close();

                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "SacolaDAO Alterar " + e);

                }

            }
            public void excluirUsuario(Sacolas objSacola){
                String comando = "delete from sacola where nome = ?";

                conSacola = new ConexaoDAO().conectaBD();

                try {
                    prep = conSacola.prepareStatement(comando);
                    prep.setString(1,objSacola.getNome());

                    prep.execute();
                    prep.close();

                } catch (SQLException e) {
                    JOptionPane.showMessageDialog(null, "SacolaDAO Excluir " + e);

                }
            }
}
