<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Projeto4.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="margim-top-60">
   
     <div class="row">

         <!--Formulario-->
         <div class="col-6">

             <asp:Label ID="Mensagem" runat="server" Text=""></asp:Label>
             <br />

             <asp:Label ID="Codigo" runat="server" Font-Size="30px" ></asp:Label>

             <label>NOME</label>
             <asp:TextBox ID="Nome" runat="server"></asp:TextBox>
             <label>NOME ACESSO</label>
             <asp:TextBox ID="NomeAcesso" runat="server"></asp:TextBox>
             <label>SENHA</label>
             <asp:TextBox ID="Senha" runat="server"></asp:TextBox>
             <br />
             <asp:Button ID="Salvar" OnClick="Salvar_Click" runat="server" Text="SALVAR" />
             <asp:Button ID="Excluir" runat="server" Visible="false" CssClass="botao-delete" OnClick="Excluir_Click" Text="Excluir" />

             </div>
      
          <div class="col-6" style="padding:16px; margin-top:40px">

              <asp:GridView AutoGenerateSelectButton="true" OnSelectedIndexChanged="ExibirUsuarios_SelectedIndexChanged" Width="100%" ID="ExibirUsuarios" runat="server"></asp:GridView>
           
              </div>


         </div>
        
        </div>

</asp:Content>
