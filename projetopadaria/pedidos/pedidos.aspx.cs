using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetopadaria
{
    public partial class pedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["usuario_logado"]!=null)
                {
                    sistemapadariaEntities conexao = new sistemapadariaEntities();
                    carregaUsuario(conexao);
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
            
        }
        private void carregaUsuario(sistemapadariaEntities conexao)
        {
            var lista = conexao.cadastros.ToList();
            ddlUsuario.DataSource = lista;
            //Valor que sera mostrado
            ddlUsuario.DataTextField = "nome";
            //Chave Estrangueira
            ddlUsuario.DataValueField = "ID";
            ddlUsuario.DataBind();
        }

        protected void btnEncomendar_Click(object sender, EventArgs e)
        {
            
            string encomenda = txtEncomenda.Text;
            DateTime data = DateTime.Parse("30/05/2020");
            string alteracao = txtAlteracao.Text;
           
            sistemapadariaEntities conexao = new sistemapadariaEntities();
            pedidos p = new pedidos();
            p.encomenda = txtEncomenda.Text;
            p.alteracao = txtAlteracao.Text;
            p.IDnome = Convert.ToInt32(ddlUsuario.SelectedValue.ToString());
            p.data = DateTime.Parse("30/05/20");
            conexao.pedidos.Add(p);
            conexao.SaveChanges();

            var lista = conexao.pedidos.ToList();
            GridPedidos.DataSource = lista;
            GridPedidos.DataBind();


        }
    }
}