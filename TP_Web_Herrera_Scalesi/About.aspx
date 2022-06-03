<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TP_Web_Herrera_Scalesi.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--<h2><%: Title %>.</h2>-->
    
    <div>  
        <h1>Listado de Artículos</h1>
    </div>

    <div style="display: flex; width: 100%; flex-wrap:wrap; border: 3px; padding: 8px;">
        <h4><asp:Label ID="lblFiltro" runat="server" Text="Ingrese busqueda: "></asp:Label></h4>
        <asp:TextBox ID="txtFiltro" runat="server"></asp:TextBox>
        <asp:Button ID="btnFiltro" runat="server" Text="Buscar" OnClick="btnFiltro_Click"/>
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

                    <% Session.Add("nombre", item.Nombre); %>
                    <% Session.Add("descripcion", item.Descripcion); %>
                    <% Session.Add("codigo", item.Codigo); %>
                    <% Session.Add("imagenUrl", item.ImagenUrl); %>
                    <% Session.Add("precio", item.Precio); %>

                <div style="position: static; bottom: 0px;">
                    <asp:Button ID="btnAgregar" Text="Agregar al carrito" runat="server" OnClick="btnAgregar_Click" />

                </div>
            </div>


        <% } %>





    </div>

</asp:Content>
