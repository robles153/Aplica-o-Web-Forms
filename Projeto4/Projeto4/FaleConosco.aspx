<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="FaleConosco.aspx.cs" Inherits="Projeto4.FaleConosco" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> <!--conteudo-->

 <div class="margim-top-60">
     <h1>Fale conosco</h1>
     <br />
     <br />

     <div class="row">

         <!--Formulario-->
         <div class="col-6">

             <div class="box border margin-right-20">

                 <asp:Label ID="Msg" runat="server" ForeColor="Red" Text=""></asp:Label>
                 <br /> 
                 <br />
                 <label>MENSAGEM</label>
                 <asp:TextBox ID="Mensagem" runat="server" TextMode="MultiLine" Rows="6" MaxLength="256"></asp:TextBox>
                 
                 <label>NOME</label>
                  <asp:TextBox ID="Nome" runat="server" MaxLength="100"></asp:TextBox>
                   
                 <label>E-MAIL</label>
                  <asp:TextBox ID="Email" runat="server" MaxLength="256"></asp:TextBox>

                 <br />
                 <br />
                 <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />

             </div>

         </div>
        


         
         <!--MAPA-->
         <div class="col-6">

             <div style="height:500px">
                
                 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.692127855011!2d-47.35234998442142!3d-22.739681837647836!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bea5cdb94f9%3A0xffb368bd91ea12ae!2sFatec%20Americana%20-%20Faculdade%20de%20Tecnologia%20de%20Americana%20Ministro%20Ralph%20Biasi!5e0!3m2!1spt-BR!2sbr!4v1651598800915!5m2!1spt-BR!2sbr" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
             </div>

         </div>



     </div>



 </div>


</asp:Content>
