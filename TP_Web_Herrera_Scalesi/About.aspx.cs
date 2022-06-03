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
            //if (!IsPostBack)
                ArticuloNegocio articuloNegocio = new ArticuloNegocio();
                listaArticulos = articuloNegocio.listar();
                dgvListadoArticulos.DataSource = listaArticulos;
                dgvListadoArticulos.DataBind();

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            Response.Redirect("Default.aspx");
            
        }

        protected void btnFiltro_Click(object sender, EventArgs e)
        {
            List<Articulo> listaFiltrada;
            string filtro = txtFiltro.Text;
            dgvListadoArticulos.DataSource = null;
            if (filtro != "")
            {
                listaArticulos = listaArticulos.FindAll(x => x.Nombre == filtro);
            }

            else 
            {
                listaArticulos = listaArticulos;
            }

            
            dgvListadoArticulos.DataSource = listaArticulos;
        }
    }
}