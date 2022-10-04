<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Curiosidades.aspx.cs" Inherits="Projeto4.Curiosidades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="title-curiosidades">
        <h2>Curiosidades sobre o curso Análise e Desenvolvimento de Sistemas </h2>
    </div>


    <div class="row">




        <div class="col-12">

            <div class="margin-bottom-40">
                <h4>Conheça as linguagens de programação mais utilizadas no munto</h4>
            </div>

            <!--Java -->
            <div class="flexAlign-center">
                <asp:Image ID="Image1" ImageUrl="~/Fotos/LogoIDE/java-logo.png" runat="server" />
            </div>
            <div class="ajust-texts">
                <h4>JAVA</h4>
                <p>
                    Java é o tipo de tecnologia cujo nome ficou conhecido mesmo por quem não é da área de tecnologia. Foi criada em 1995 na Sun Microsystems, sendo hoje a linguagem de programação mais usada dentro do ambiente corporativo.

O destaque da linguagem é o foco dela na orientação a objetos, o que torna a tecnologia robusta e versátil. As aplicações escritas em Java podem rodar em qualquer plataforma, bastando apenas que o sistema tenha alguma implementação da Máquina Virtual Java (JVM) instalada.

Por conta de sua popularidade e aceitação no mercado, Java é uma das melhores linguagens para aprender em 2021.
                </p>


            </div>


        </div>


        <div class="col-12">

            <!--python -->
            <div class="flexAlign-center margim-top-60">
                <asp:Image CssClass="image-size" ID="Image2" ImageUrl="~/Fotos/LogoIDE/Pythoin.jpg" runat="server" />
            </div>
            <div class="ajust-texts">
                <h4>Python</h4>
                <p>
                    Uma das linguagens que mais tem crescido e ganhado popularidade nos últimos anos é a nossa primeira indicação. Python foi criado em 1991 como sendo uma linguagem de programação open source e tem como um dos maiores diferenciais a facilidade no aprendizado.

Em pouco tempo de estudo, você já estará familiarizado com a sintaxe e as principais funções da tecnologia e, em pouco tempo, estará pronto para se candidatar a vagas que exigem esse conhecimento.

Além disso, Python é extremamente versátil, podendo ser usada em uma grande variedade de áreas e para resolver diversos problemas.

É uma das linguagens mais indicadas para aprender em 2021 e continuará sendo uma das mais usadas nos próximos anos.
                </p>


            </div>

        </div>



        <div class="col-12">

            <!--C# -->
            <div class="flexAlign-center margim-top-60">
                <asp:Image ID="Image3" ImageUrl="~/Fotos/LogoIDE/Csharp_Logo.png" runat="server" />
            </div>

            <div class="ajust-texts">

                <h4>C#</h4>
                <p>
                    O C# (leia-se C-Sharp), é uma linguagem de programação orientada a objetos, que foi desenvolvida pela Microsoft e faz parte da plataforma .NET. Embora a linguagem C# tenha sido criada do zero, foi baseada na linguagem C++ e tem muitos elementos da linguagem Pascal e Java.

A plataforma .NET teve suas bibliotecas inicialmente feitas em Simple Managed C (SMC), porém esta limitou muito o trabalho na plataforma. No inicio de 1999 foi montada uma equipe, liderada por Anders Hejlsberg, com o objetivo de criar uma nova linguagem para a plataforma .NET. Esta linguagem seria criada para desprender a plataforma .NET de outras linguagens, pois o código das linguagens já existentes limitava o desenvolvimento da plataforma.

Esta linguagem foi desenvolvida com o nome de Cool. No momento do lançamento da plataforma .NET, mudaram o nome da linguagem para C#. A criação da linguagem C# ajudou muito no desenvolvimento do .NET, pois a plataforma não precisou se adequar a nenhum código de alguma linguagem já existente. O C# foi criado especificamente para .NET, sendo que muitas outras linguagens tem suporte á C#. Algumas destas linguagens são VB.NET, C++ e J#. Embora a linguagem C# seja considerada muito semelhante ao Java, existem também varias diferença.
                </p>

            </div>

        </div>


        <div class="col-12">

            <!--c++ -->
            <div class="flexAlign-center margim-top-60">
                <asp:Image CssClass="image-size1" ID="Image4" ImageUrl="~/Fotos/LogoIDE/C.png" runat="server" />
            </div>
            <div class="ajust-texts">
                <h4>C++</h4>
                <p>
                    Dividindo o posto com Java entre as linguagens de programação mais utilizadas no mundo, as tecnologias C e C++ são geralmente aprendidas nos primeiros anos das faculdades de programação. Isso não acontece por acaso, estamos falando de opções robustas e extremamente poderosas e que certamente podem fazer diferença no currículo de um profissional.

Embora parecidas no nome, C e C++ são diferentes, mas compartilham muitas características em comum. Aprender cada uma delas pode oferecer uma excelente base para profissionais da área de programação, além de uma boa oferta de emprego para quem as domina.

                </p>
            </div>

        </div>


        <div class="margim-top-20 margin-bottom-40 conteudo-2">

            <h4>Faça um teste rapido de vocação para saber se o curso de Análise e desenvolvimento de sistemas combina com você basta
                 <asp:HyperLink CssClass="link-effect" ID="HyperLink1" runat="server" NavigateUrl="~/Vocacao.aspx">clicar aqui.</asp:HyperLink>

            </h4>
          
        </div>


      






    </div>


</asp:Content>
