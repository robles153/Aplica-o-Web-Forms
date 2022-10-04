<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto4.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="flexslider">

        <ul class="slides">

            <li>
                <img src="Fotos/banner0.png" />

            </li>

            <li>
                <img src="Fotos/banner1.png" />

            </li>

            <li>

                <img src="Fotos/banner2.png" />

            </li>


        </ul>

    </div>

    <script>
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                rt1: true
            });
        });

    </script>

    <!--conteudo de pagina -->


    <div class="margin-right-60">

        <div class="row">



            <div style="margin-top: 40px" class="col-3 border box">

                <div>
                    <asp:Image ImageUrl="~/Fotos/si1.png" Height="100%" Width="100%" ID="Image1" runat="server" />
                </div>

                <div>
                    <h3>Analise e desenvolvimento de sistemas</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>

            </div>


            <div class="col-3 border box margin-left-top ">

                <div>
                    <asp:Image ImageUrl="~/Fotos/si1.png" Height="100%" Width="100%" ID="Image2" runat="server" />
                </div>

                <div>
                    <h3>Analise e desenvolvimento de sistemas</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>

            </div>


            <!-- style="margin-left:30px; margin-top:15px -->

            <div class="col-3 border box margin-left-top ">

                <div>
                    <asp:Image ImageUrl="~/Fotos/si1.png" Height="100%" Width="100%" ID="Image3" runat="server" />
                </div>

                <div>
                    <h3>Analise e desenvolvimento de sistemas</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>

            </div>




        </div>

    </div>



</asp:Content>
