<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TP_Web_Herrera_Scalesi.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--<h2><%: Title %>.</h2>-->
    
    <div>
           
        <h1>Listado de Artículos</h1>
    
    </div>
    
    <asp:GridView style="display: none" runat="server" ID="dgvListadoArticulos"></asp:GridView>

    <div style="display: flex; width: 100%; flex-wrap:wrap; border: solid 3px;">
                <% foreach (Dominio.Articulo item in listaArticulos)
        { %>
            <div style="height: 250px; width: 150px; padding: 10px; border-left: solid 1px; padding: 10px; margin: 10px">
                <h4><%= item.Nombre %></h4>
                <p><%= item.Descripcion %></p>
                <img src="<%=item.ImagenUrl %>" alt="img" height="70"/>
                <h3><%= item.Precio %></h3>

                <div style="position: static; bottom: 0px;">
                    <asp:Button ID="btnAgregar" Text="Agregar al carrito" runat="server" OnClick="btnAgregar_Click" />
                </div>
            </div>


        <% } %>





    </div>

</asp:Content>
