<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Vocacao.aspx.cs" Inherits="Projeto4.Vocacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <div>

          <div class="col-12">

            <div>
                <ol>

                    <li>
                        <p>Você gosta de enfrentar raciocínios lógicos?</p>
                        <asp:RadioButtonList ID="answer1" runat="server">

                            <asp:ListItem Text="Sim" Value="0"></asp:ListItem>

                            <asp:ListItem Text="Não" Value="1"></asp:ListItem>

                        </asp:RadioButtonList>
                    </li>

                    <li>
                        <p>Você gosta de tecnologias?</p>
                        <asp:RadioButtonList ID="answer2" runat="server">

                            <asp:ListItem Text="Sim" Value="0"></asp:ListItem>

                            <asp:ListItem Text="Não" Value="1"></asp:ListItem>

                        </asp:RadioButtonList>
                    </li>

                    <li>
                        <p>Você gosta de ter uma visão ampla dos seus desafios?</p>
                        <asp:RadioButtonList ID="answer3" runat="server">

                            <asp:ListItem Text="Sim" Value="0"></asp:ListItem>

                            <asp:ListItem Text="Não" Value="1"></asp:ListItem>

                        </asp:RadioButtonList>
                    </li>

                    <li>
                        <p>Você gosta de estar antenado nas tendências tecnologicas?</p>
                        <asp:RadioButtonList ID="answer4" runat="server">

                            <asp:ListItem Text="Sim" Value="0"></asp:ListItem>

                            <asp:ListItem Text="Não" Value="1"></asp:ListItem>

                        </asp:RadioButtonList>

                    </li>

                    <li>
                        <p>Você gosta de estudar frequentemente?</p>
                        <asp:RadioButtonList ID="answer5" runat="server">

                            <asp:ListItem Text="Sim" Value="0"></asp:ListItem>

                            <asp:ListItem Text="Não" Value="1"></asp:ListItem>

                        </asp:RadioButtonList>
                    </li>

                    <li>
                        <p>você gosta de viver em constante adaptação?</p>
                        <asp:RadioButtonList ID="answer6" runat="server">

                            <asp:ListItem Text="Sim" Value="0"></asp:ListItem>

                            <asp:ListItem Text="Não" Value="1"></asp:ListItem>

                        </asp:RadioButtonList>
                    </li>

                </ol>

                <asp:Button CssClass="margin-left-40" ID="verResposta" OnClick="verResposta_Click" runat="server" Text="Resultado" />

                <div class="margin-left-40 margim-top-20 conteudo-2">
                    <p>
                        <asp:Label ForeColor="black" ID="textoResposta" runat="server" Text=""></asp:Label>
                    </p>
                </div>

            </div>

        </div>

    </div>

</asp:Content>
