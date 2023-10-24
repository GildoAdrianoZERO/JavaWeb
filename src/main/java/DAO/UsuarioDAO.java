
package DAO;

import DTO.usuarios;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

import java.sql.Connection;


/**
 *
 * @author Lucas
 */
public class UsuarioDAO {
     Connection conClientes;
            PreparedStatement prep;
            ResultSet rs;
            ArrayList<usuarios> lista = new ArrayList<>();

            public void cadastrarUsuario(usuarios objUsuario) {
                String comando = "insert Into cliente(cpf, nome, telefone, email, endereco) values (?, ?, ?, ?, ?)";

                conClientes = new ConexaoDAO().conectaBD();

                try {
                    prep = conClientes.prepareStatement(comando);
                    prep.setString (1,objUsuario.getCpf());
                    prep.setString(2,objUsuario.getNome());
                    prep.setString(3,objUsuario.getTelefone());
                    prep.setString(4,objUsuario.getEmail());
                    prep.setString(5,objUsuario.getEndereco());

                    prep.execute();
                    prep.close();

                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "ClientesDAO cadastrar " + e);

                }

            }


            public ArrayList<usuarios> listarUsuarios(){
                String comando = "select * from cliente";
                conClientes = new ConexaoDAO().conectaBD();
                try {
                    prep = conClientes.prepareStatement(comando);
                    rs = prep.executeQuery();

                    while (rs.next()) {
                        usuarios objClientes = new usuarios();
                        objClientes.setCpf(rs.getString("cpf"));
                        objClientes.setNome(rs.getString("nome"));
                        objClientes.setTelefone(rs.getString("telefone"));
                        objClientes.setEmail(rs.getString("email"));
                        objClientes.setEndereco(rs.getString("endereco"));

                        lista.add(objClientes);
                    }

                } catch (SQLException e) {
                    JOptionPane.showMessageDialog(null,"ClientesDAO listar " + e);
                }
                return lista;
            }


            public void alterarUsuarios(usuarios objUsuarios){
                String comando = "update cliente set nome = ?, telefone = ?, email = ?, endereco = ? where cpf = ?";

                conClientes = new ConexaoDAO().conectaBD();

                try {
                    prep = conClientes.prepareStatement(comando);
                    prep.setString (5,objUsuarios.getCpf());
                    prep.setString(1,objUsuarios.getNome());
                    prep.setString(2,objUsuarios.getTelefone());
                    prep.setString(3,objUsuarios.getEmail());
                    prep.setString(4,objUsuarios.getEndereco());
 

                    prep.execute();
                    prep.close();

                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "ClientesDAO Alterar " + e);

                }

            }
            public void excluirUsuario(usuarios objUsuarios){
                String comando = "delete from cliente where cpf = ?";

                conClientes = new ConexaoDAO().conectaBD();

                try {
                    prep = conClientes.prepareStatement(comando);
                    prep.setString(1,objUsuarios.getCpf());

                    prep.execute();
                    prep.close();

                } catch (SQLException e) {
                    JOptionPane.showMessageDialog(null, "ClientesDAO Excluir " + e);

                }
            }
}
