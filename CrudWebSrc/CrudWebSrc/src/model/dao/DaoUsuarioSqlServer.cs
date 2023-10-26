using System;
using System.Data;
using System.Linq;
using System.Drawing;
using System.Data.SqlClient;
using System.Security.Policy;
using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;

namespace CrudWeb.src.model.dao
{
    using CrudWeb.src.controller;
    using CrudWeb.src.model.bean;

    internal class DaoUsuarioSqlServer
    {
        private SqlConnection con;// conexão com BD
        private SqlCommand cmd;// comandos sql
        //****************** Importante: Aqui entra a String de conexão com o BD ***********************************
        private readonly String url = "Data Source=DESKTOP-KOJPTEU\\SQLSERVER;Initial Catalog = unip20232; Integrated Security = True";

        public Usuario Validar(Usuario usuEnt)
        {
            Usuario usuSaida = null;

            try
            {
                // Conexao
                con = new SqlConnection(url);
                String sql = "select * from usuarios where login = @login and senha = @senha";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@login", usuEnt.Login);
                cmd.Parameters.AddWithValue("@senha", usuEnt.Senha);

                con.Open();
                SqlDataReader lista = cmd.ExecuteReader();
                while (lista.Read())
                {
                    usuSaida = new Usuario(
                        lista.GetInt32(0),
                        lista.GetString(1),
                        lista.GetString(2),
                        lista.GetString(3),
                        lista.GetString(4));
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return usuSaida;
        }


        public Usuario Inserir(Usuario usuEnt)
        {
            try
            {
                // Conexao
                con = new SqlConnection(url);
                String sql = "insert into usuarios(login,senha,status,tipo) values(@login,@senha,@status,@tipo) SET @IdRetorno = SCOPE_IDENTITY();";
                cmd = new SqlCommand(sql,con);
                // parâmetros
                cmd.Parameters.AddWithValue("@login", usuEnt.Login);
                cmd.Parameters.AddWithValue("@senha", usuEnt.Senha);
                cmd.Parameters.AddWithValue("@status", usuEnt.Status);
                cmd.Parameters.AddWithValue("@tipo", usuEnt.Tipo);
                cmd.Parameters.Add("@IdRetorno", SqlDbType.Int, 4).Direction = ParameterDirection.Output;
                // tenta realizar a conexão com o BD
                con.Open();
                cmd.ExecuteNonQuery();
                usuEnt.Id = Convert.ToInt32(cmd.Parameters["@IdRetorno"].Value); 
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                con.Close();
            }

            return usuEnt;

        }

        public Usuario Buscar(Usuario usuEnt)
        {
            Usuario usuSaida = null;
           
            try
            {
                // Conexao
                con = new SqlConnection(url);
                String sql = "select * from usuarios where id = @id";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@id", usuEnt.Id);
                con.Open();
                SqlDataReader lista = cmd.ExecuteReader();
                while (lista.Read())
                {
                    usuSaida = new Usuario(
                        lista.GetInt32(0),
                        lista.GetString(1),
                        lista.GetString(2),
                        lista.GetString(3),
                        lista.GetString(4));
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return usuSaida;
        }
        public List<Usuario> Listar(Usuario usuEnt)
        {
            Usuario usuSaida;
            List<Usuario> ListaUsuarioSaida = new List<Usuario>();
            try
            {
                // Conexao
                con = new SqlConnection(url);
                String sql = "select * from usuarios where login like @codigo";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@codigo", "%" + usuEnt.Login + "%");
                con.Open();
                SqlDataReader lista = cmd.ExecuteReader();
                while (lista.Read())
                {
                    usuSaida = new Usuario(
                        lista.GetInt32(0),
                        lista.GetString(1),
                        lista.GetString(2),
                        lista.GetString(3),
                        lista.GetString(4));
                    ListaUsuarioSaida.Add(usuSaida);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                con.Close();
            }

            return ListaUsuarioSaida;

        }

        public Usuario Excluir(Usuario usuEnt)
        {
            try
            {
                // Conexao
                con = new SqlConnection(url);
                String sql = "delete from usuarios where id = @id";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@id", usuEnt.Id);
                con.Open();
                cmd.ExecuteReader();
                return usuEnt;
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public Usuario Alterar(Usuario usuEnt)
        {
            try
            {
                con = new SqlConnection(url);
                String sql = "UPDATE USUARIOS SET LOGIN=@login,SENHA=@senha,STATUS=@status,TIPO=@tipo WHERE ID =@id";
                cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@login", usuEnt.Login);
                cmd.Parameters.AddWithValue("@senha", usuEnt.Senha);
                cmd.Parameters.AddWithValue("@status", usuEnt.Status);
                cmd.Parameters.AddWithValue("@tipo", usuEnt.Tipo);
                cmd.Parameters.AddWithValue("@id", usuEnt.Id);
                con.Open();
                cmd.ExecuteReader();
                return usuEnt;
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
