<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="ExibirExcessoes.aspx.cs" Inherits="Projeto4.ExibirExcessoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="margim-top-60">

        <div>
            <h1>Log de Exceções da aplicação</h1>
            <br />
            <br />


            <asp:Label ID="LabelEx" runat="server"></asp:Label>

            <br />
            <br />

            <asp:Button ID="Button1" OnClick="Button1_Click" BackColor="Red" runat="server" Text="Deletar" />


            <asp:Button CssClass="margin-left-40 margin-bottom-40" ID="Button2" OnClick="Button2_Click" runat="server" Text="Limpar" />
        
        </div>




    </div>

</asp:Content>
