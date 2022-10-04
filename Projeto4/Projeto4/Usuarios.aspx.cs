using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDatabase;

//colocar nas referencias do projeto a dll "app_database" esta na pasta BIN/Source/AppDatabase 4.0

namespace Projeto4
{
    public partial class Usuarios : System.Web.UI.Page
    {

        //String de conexao com o banco de dados access
        //ref https://www.connectionstrings.com

        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/DBADSTARDE2022.accdb") + ";Persist Security Info=False;";

        protected void Page_Load(object sender, EventArgs e)
        {

            LoadUsuarios();
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            string comando = "";



            if(NomeAcessoExiste(NomeAcesso.Text,Codigo.Text))
            {

                Mensagem.Text = "Este nome de acesso já esta em uso por outro usuario";
            }
            else
            {
                if (Codigo.Text != "")
                {

                    comando = "UPDATE Usuarios SET Nome='" + Utilities.Filter(Nome.Text) + "',NomeAcesso='" + Utilities.Filter(NomeAcesso.Text) + "',Senha='" + Utilities.Filter(Senha.Text) + "' WHERE Codigo=" + Utilities.Filter(Codigo.Text);
                }
                else
                {
                    comando = "INSERT INTO Usuarios(Nome,NomeAcesso,Senha) VALUES('" + Utilities.Filter(Nome.Text) + "','" + Utilities.Filter(NomeAcesso.Text) + "','" + Utilities.Filter(Senha.Text) + "');";
                }

                AppDatabase.OleDBTransaction db = new OleDBTransaction();
                db.ConnectionString = conexao;
                db.Query(comando);
                LoadUsuarios();
                LimparCampos();


            }





        }

        protected void LimparCampos()
        {
            Nome.Text = "";
            NomeAcesso.Text = "";
            Codigo.Text = "";
            Senha.Text = "";
            Excluir.Visible = false;
        }

        // carrega o grid com os dados da tabela de banco de dados 
        protected void LoadUsuarios()
        {
            string comando = "SELECT Codigo,Nome,NomeAcesso FROM Usuarios ORDER BY Nome ASC;";

            AppDatabase.OleDBTransaction db = new OleDBTransaction();
            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

            ExibirUsuarios.DataSource = tb;
            ExibirUsuarios.DataBind();

        }

        //valida campos vazios
        private Boolean ValidaLogin()
        {
            if (Nome.Text != "" && NomeAcesso.Text != "" && Senha.Text != "")
            {
                return true;
            }
            else return false;
        }


        //seleciona a linha de edição
        protected void ExibirUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Codigo.Text = ExibirUsuarios.SelectedRow.Cells[1].Text;
            string comando = "SELECT * FROM Usuarios WHERE Codigo =" + Codigo.Text;
            AppDatabase.OleDBTransaction db = new OleDBTransaction();
            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comando);

            Nome.Text = tb.Rows[0]["Nome"].ToString();
            NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();
            Senha.Text = tb.Rows[0]["Senha"].ToString();
            Excluir.Visible = true;

        }


      

        protected void Excluir_Click(object sender, EventArgs e)
        {
            string comando = "DELETE * FROM Usuarios WHERE Codigo="+ Codigo.Text;
            AppDatabase.OleDBTransaction db = new OleDBTransaction();
            db.ConnectionString = conexao;
            db.Query(comando);
            LoadUsuarios();
            LimparCampos();
        }

        protected bool NomeAcessoExiste(string nomeAcesso, string codigo)
        {

            return false;
            // se ja existe retorne true -> ação no botao de salvar / se codigo existe pertence a algum usuario existente
        }
    }
}

