using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetopadaria
{
    public partial class pedidos1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario_logado"] != null)
                {
                    sistemapadariaEntities conexao = new sistemapadariaEntities();
                    cadastros usuario = (cadastros)Session["usuario_logado"];
                    lblUsuarioLogado.Text = " Logado como: " + usuario.nome;
                    carregarGrig(conexao);
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
            sistemapadariaEntities conexao = new sistemapadariaEntities();
            if (gridPedidos.SelectedValue == null)
            {
                string encomenda = txtEncomenda.Text;
                string alteracao = txtAlteracao.Text;
                DateTime data2 = Convert.ToDateTime(txtData.Text);
                int quantidade = Convert.ToInt32(txtQuantidade.Text);
                pedidos p = new pedidos();
                p.IDnome = Convert.ToInt32(ddlUsuario.SelectedValue.ToString());
                p.encomenda = encomenda;
                p.alteracao = alteracao;
                p.data = data2;
                p.quantidade = quantidade;
                conexao.pedidos.Add(p);
                carregaUsuario(conexao);
                limpar();
            }
            else
            {
                //alterando
                //busca registro de aluno no banco de dados de acordo com o registro selecionado na grid
                pedidos pedido = conexao.pedidos.FirstOrDefault(linha => linha.ID.ToString().Equals(gridPedidos.SelectedValue.ToString()));
                //altera os campos do obejto
                pedido.encomenda = txtEncomenda.Text;
                pedido.alteracao = txtAlteracao.Text;
                pedido.data = Convert.ToDateTime(txtData.Text);
                pedido.quantidade = Convert.ToInt32(txtQuantidade.Text);
                //altera o registro no banco
                conexao.Entry(pedido);
                //remove seleção do registro da grid
                gridPedidos.SelectedIndex = -1;
            }
               //Armazena objeto no banco de Dados (HD)
               conexao.SaveChanges();
               carregarGrig(conexao);
               carregaUsuario(conexao);
        }
        private void carregarGrig(sistemapadariaEntities conexao)
        {
            var lista = conexao.pedidos.ToList();
            gridPedidos.DataSource = lista;
            gridPedidos.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            //criar conexao
            sistemapadariaEntities conexao = new sistemapadariaEntities();
            //definir criterio de busca
            List<pedidos> listaBusca = conexao.pedidos.Where(linha => linha.encomenda.Contains(txtBuscar.Text)).ToList();
            //atibui lista
            gridPedidos.DataSource = listaBusca;
            gridPedidos.DataBind();
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            if (gridPedidos.SelectedValue != null)
            {
                sistemapadariaEntities conexao = new sistemapadariaEntities();
                //Obte, registro selecionado na grid
                int IDSelecionado = Convert.ToInt32(gridPedidos.SelectedValue.ToString());
                //busca registro no banco
                pedidos a = conexao.pedidos.FirstOrDefault(linha => linha.ID.ToString().Equals(IDSelecionado.ToString()));
                //Alimenta Campos do Form
                txtEncomenda.Text = a.encomenda;
                txtQuantidade.Text = a.quantidade.ToString();
                txtData.Text = a.data.ToString();
                txtAlteracao.Text = a.alteracao;
                
            }
           
        }
        private void limpar()
        {
            txtEncomenda.Text = string.Empty;
            txtQuantidade.Text = string.Empty;
            txtData.Text = string.Empty;
            txtAlteracao.Text = string.Empty;
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            limpar();
        }

        protected void lbSair_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx");
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            sistemapadariaEntities conexao = new sistemapadariaEntities();
            int IDSelecionado = Convert.ToInt32(gridPedidos.SelectedValue.ToString());
            //recupar objeto banco de dados
            pedidos encomenda = conexao.pedidos.FirstOrDefault(linha => linha.ID.ToString().Equals(IDSelecionado.ToString()));
            //remoção regristro
            conexao.pedidos.Remove(encomenda);

            conexao.SaveChanges();

            carregarGrig(conexao);

        }
    }
}