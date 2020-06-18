using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projetopadaria
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text;
            string cpf = txtCpf.Text;
            string logradouro = txtLogradouro.Text;
            int numero = Convert.ToInt32(txtNumero.Text);
            string bairro = txtBairro.Text;
            string cidade = txtCidade.Text;
            string estado = txtEstado.Text;
            string telefone = txtTelefone.Text;
            //criar conexao banco de dados
            sistemapadariaEntities conexao = new sistemapadariaEntities();
            //criar objeto notas
            cadastros c = new cadastros();
            c.senha = txtSenha.Text;
            c.nome = nome;
            c.cpf = cpf;
            c.logradouro = logradouro;
            c.numero = txtNumero.Text;
            c.bairro = bairro;
            c.cidade = cidade;
            c.estado = estado;
            c.telefone = telefone;
            //insere objeto notas em memoria 
            conexao.cadastros.Add(c);
            //Armazena objeto no banco de Dados (HD)
            conexao.SaveChanges();

            Response.Redirect("Default.aspx");
           

        }
        private void limpar()
        {
            txtNome.Text = string.Empty;
            txtCpf.Text = string.Empty;
            txtLogradouro.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtCidade.Text = string.Empty;
            txtEstado.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            txtSenha.Text = string.Empty;
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            limpar();
        }
    }
}