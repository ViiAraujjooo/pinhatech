using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CrudWeb.src.model.bean;
using CrudWeb.src.model.dao;

namespace CrudWeb.src.controller
{
    public class ControllerUsuario
    {
        DaoUsuarioSqlServer daoUsuarioSqlServer = null;

        public ControllerUsuario() { 
        }

        public Boolean Validar(Usuario usuEnt)
        {
            Boolean validar = false;

            daoUsuarioSqlServer = new DaoUsuarioSqlServer();
            Usuario usuSaida = daoUsuarioSqlServer.Validar(usuEnt);

            if (usuSaida != null)
            {
                if ((usuSaida.Login == usuEnt.Login) && (usuSaida.Senha == usuEnt.Senha))
                {
                    validar = true;
                }
            }

            return validar;

        }


        public Usuario Inserir (Usuario usuEnt)
        {
            daoUsuarioSqlServer = new DaoUsuarioSqlServer();
            return daoUsuarioSqlServer.Inserir(usuEnt);
            
        }

        public Usuario Buscar(Usuario usuEnt)
        {
            daoUsuarioSqlServer = new DaoUsuarioSqlServer();
            return daoUsuarioSqlServer.Buscar(usuEnt);
        }

        public List<Usuario> Listar(Usuario usuEnt)
        {
            daoUsuarioSqlServer = new DaoUsuarioSqlServer();
            List<Usuario> lista = daoUsuarioSqlServer.Listar(usuEnt);
            return lista;
        }

        public Usuario Excluir(Usuario usuEnt)
        {

            daoUsuarioSqlServer = new DaoUsuarioSqlServer();
            return daoUsuarioSqlServer.Excluir(usuEnt);
            
        }
        public Usuario Alterar(Usuario usuEnt)
        {

            daoUsuarioSqlServer = new DaoUsuarioSqlServer();
            return daoUsuarioSqlServer.Alterar(usuEnt);
        }



    }
}
