using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TP_Web_Herrera_Scalesi
{
    public partial class About : Page
    {
      

        public List<Articulo> listaArticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio articuloNegocio = new ArticuloNegocio();
            listaArticulos = articuloNegocio.listar();
            dgvListadoArticulos.DataSource = listaArticulos;
            dgvListadoArticulos.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            Response.Redirect("Default.aspx");
            
        }
    }
}