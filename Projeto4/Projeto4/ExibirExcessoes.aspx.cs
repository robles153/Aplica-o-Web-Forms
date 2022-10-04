using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LibraryADS2022;

namespace Projeto4
{
    public partial class ExibirExcessoes : System.Web.UI.Page
    {
        TratamentoExcecao load = new TratamentoExcecao();

        protected void Page_Load(object sender, EventArgs e)
        {
            load.FileName = "~/log.txt";
            LabelEx.Text = load.LoadException().Replace("\n","<br/>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            load.DeleteException();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            load.ClearException();
            LabelEx.Text = "";
        }
    }
}