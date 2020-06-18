using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetopadaria
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            //Definição de Usuario e senha
            string nome = txtUsuario.Text;
            string senha = txtSenha.Text;
            //cria conexao  com o banco de dados 
            sistemapadariaEntities conexao = new sistemapadariaEntities();
            //Consulta objeto usuario beseado em logion e senha
            cadastros user =
            conexao.cadastros.FirstOrDefault(
                linha => linha.nome.Equals(nome) && linha.senha.Equals(senha));
            if (user != null)
            {
                //login ok
                Session["usuario_logado"] = user;
                Response.Redirect("pedidos.aspx");
            }
        }
    }
}