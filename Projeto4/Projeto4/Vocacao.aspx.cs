using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto4
{
    public partial class Vocacao : System.Web.UI.Page
    {
        static int answarValue;
        static Boolean logica, estudar, adaptacao;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void verResposta_Click(object sender, EventArgs e)
        {
            answarValue = 0;
            logica = false;
            estudar = false;
            adaptacao = false;

            if (answer1.SelectedValue.Equals("") ||
         answer2.SelectedValue.Equals("") ||
         answer3.SelectedValue.Equals("") ||
         answer4.SelectedValue.Equals("") ||
         answer5.SelectedValue.Equals("") ||
         answer6.SelectedValue.Equals(""))
            {
                textoResposta.ForeColor = System.Drawing.Color.Red;
                textoResposta.Text = "preencha todos campos e tente novamente";
            }
            else
            {
                textoResposta.ForeColor = System.Drawing.Color.Black;

                if (answer1.SelectedValue.Equals("0"))
                {
                    setVal(2);
                    logica = true;
                }

                if (answer2.SelectedValue.Equals("0"))
                {
                    setVal(1);
                }

                if (answer3.SelectedValue.Equals("0"))
                {
                    setVal(2);
                }
                if (answer4.SelectedValue.Equals("0"))
                {
                    setVal(1);
                }
                if (answer5.SelectedValue.Equals("0"))
                {
                    setVal(2);
                    estudar = true;
                }
                if (answer6.SelectedValue.Equals("0"))
                {
                    setVal(2);
                    adaptacao = true;
                }

                if (logica && estudar && adaptacao)
                {
                    showText("Não perca tempo inscreva-se no curso de análise e desenvolvimento de sistemas, analisando seu perfil você se encaixa perfeitamente na área, logica é essencial no desenvolvimento de um software, exige muita dedicação e estudos, perfeito para você que gosta de se dedicar aos estudos e constantemente exige adaptação, em um universo de atualização constante como a tecnologia, a vida do programador também é impactada, Projetos começam e são encerrados em questão de semanas, startups surgem, cumprem o seu propósito e deixam de existir. A demanda de trabalho varia, as equipes mudam, a estrutura se transforma.");
                }
                else if (answarValue >= 5 && logica)
                {
                    showText("Analisando seu perfil você se encaixa muito bem nessa área, a lógica de programação é importante, porque é ela quem nos dá as ferramentas necessárias para executar o processo mais básico no desenvolvimento de alguma aplicação a criação de seu algoritmo. você enfrentara grandes desafios lógicos nessa carreira boa sorte!");
                }

                else if (answarValue >= 5 && adaptacao)
                {
                    showText("Após seu perfil ser analisado, recomendandos esta carreira para você, pessoas que se adaptam a varios tipos de cenarios tem uma grande facilidade nessa área, em um universo de atualização constante como a tecnologia, a vida do programador também é impactada Projetos começam e são encerrados em questão de semanas Startups surgem, cumprem o seu propósito e deixam de existir, a demanda de trabalho varia, as equipes mudam, a estrutura se transforma.");
                }

                else if (answarValue >= 5 && estudar)
                {

                    showText("Analisando seu perfil você se encaixa muito bem nessa área, pessoas dedicadas a estudar tendem a ter mais facilidade na compreensão, o curso de Analistas e desenvolvedores de sistemas trabalham principalmente na produção de softwares, podendo atuar em diversas fases da criação de um sistema computacional: levantamento de requisitos, projeto, especificação, documentação, implantação, testes e manutenções. De qualquer forma, o principal objetivo de um profissional de Análise e Desenvolvimento de Sistemas é analisar e propor soluções tecnológicas.");
                }

                else if (answarValue < 5)
                {
                    showText("Analisando seu perfil nota-se que essa área não é para você, mas não desanime procure outros cursos que você se identifique mais, boa sorte");
                }




            }




        }



        private int setVal(int val)
        {
            return answarValue += val;
        }

        private void showText(string str)
        {
            textoResposta.Text = str;
        }
    }
}