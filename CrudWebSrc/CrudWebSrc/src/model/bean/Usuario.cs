using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrudWeb.src.model.bean
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Login { get; set; }
        public string Senha { get; set; }
        public string Status { get; set; }
        public string Tipo { get; set; }

        public Usuario()
        {
        }

        public Usuario(int id)
        {
            this.Id = id;
        }

        public Usuario(string login)
        {
            this.Login = login;
        }
        public Usuario(string login, string senha)
        {
            this.Login = login;
            this.Senha = senha;

        }


        public Usuario(string login, string senha, string status, string tipo) 
        {
            this.Login = login;
            this.Senha = senha;
            this.Status = status;
            this.Tipo = tipo;
        }

        public Usuario(int id, string login, string senha, string status, string tipo)
        {
                this.Id = id;
                this.Login = login;
                this.Senha = senha;
                this.Status = status;
                this.Tipo = tipo;
        }


        public override string ToString()
        {
            return "[ Usuario: Id = " + Id + " Login = " + Login + " Senha = " + Senha + " Status = " + Status + " Tipo = " + Tipo + "]";
        }

    }
}
