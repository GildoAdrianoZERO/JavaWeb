
package DAO;

import DTO.Usuario;
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
            ArrayList<Usuario> lista = new ArrayList<>();

            public void cadastrarUsuario(Usuario objUsuario) {
                String comando = "insert Into usuario(cpf, nome, senha, email, endereco) values (?, ?, ?, ?, ?)";

                conClientes = new ConexaoDAO().conectaBD();

                try {
                    prep = conClientes.prepareStatement(comando);
                    prep.setString (1,objUsuario.getCpf());
                    prep.setString(2,objUsuario.getNome());
                    prep.setString(3,objUsuario.getSenha());
                    prep.setString(4,objUsuario.getEmail());
                    prep.setString(5,objUsuario.getEndereco());

                    prep.execute();
                    prep.close();

                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "UsuarioDAO cadastrar " + e);

                }

            }


            public ArrayList<Usuario> listarUsuarios(){
                String comando = "select * from usuario";
                conClientes = new ConexaoDAO().conectaBD();
                try {
                    prep = conClientes.prepareStatement(comando);
                    rs = prep.executeQuery();

                    while (rs.next()) {
                        Usuario objClientes = new Usuario();
                        objClientes.setCpf(rs.getString("cpf"));
                        objClientes.setNome(rs.getString("nome"));
                        objClientes.setSenha(rs.getString("telefone"));
                        objClientes.setEmail(rs.getString("email"));
                        objClientes.setEndereco(rs.getString("endereco"));

                        lista.add(objClientes);
                    }

                } catch (SQLException e) {
                    JOptionPane.showMessageDialog(null,"UsuarioDAO listar " + e);
                }
                return lista;
            }


            public void alterarUsuarios(Usuario objUsuario){
                String comando = "update usuario set nome = ?, telefone = ?, email = ?, endereco = ? where cpf = ?";

                conClientes = new ConexaoDAO().conectaBD();

                try {
                    prep = conClientes.prepareStatement(comando);
                    prep.setString (5,objUsuario.getCpf());
                    prep.setString(1,objUsuario.getNome());
                    prep.setString(2,objUsuario.getSenha());
                    prep.setString(3,objUsuario.getEmail());
                    prep.setString(4,objUsuario.getEndereco());
 

                    prep.execute();
                    prep.close();

                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, "UsuarioDAO Alterar " + e);

                }

            }
            public void excluirUsuario(Usuario objUsuario){
                String comando = "delete from usuario where cpf = ?";

                conClientes = new ConexaoDAO().conectaBD();

                try {
                    prep = conClientes.prepareStatement(comando);
                    prep.setString(1,objUsuario.getCpf());

                    prep.execute();
                    prep.close();

                } catch (SQLException e) {
                    JOptionPane.showMessageDialog(null, "ClientesDAO Excluir " + e);

                }
            }
}
