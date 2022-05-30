<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TP_Web_Herrera_Scalesi.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--<h2><%: Title %>.</h2>-->
    
    <div>
           
        <h1>Listado de Artículos</h1>
    
    </div>
    
    <asp:GridView style="display: none" runat="server" ID="dgvListadoArticulos"></asp:GridView>

    <div style="display: flex; width: 100%; flex-wrap:wrap;">
                <% foreach (Dominio.Articulo item in listaArticulos)
        { %>
            <div style="height: 250px; width: 150px; padding: 10px; border: 1px; padding: 10px; margin: 10px">
                <h4><%= item.Nombre %></h4>
                <p><%= item.Descripcion %></p>
                <img src="<%=item.ImagenUrl %>" alt="img" height="70"/>
                <h3><%= item.Precio %></h3>
                <div style="position: center; bottom: 10px;">
                    <asp:Button Text="Agregar al carrito" runat="server" />
                </div>
            </div>


        <% } %>





    </div>

</asp:Content>
