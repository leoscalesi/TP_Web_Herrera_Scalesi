using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_Web_Herrera_Scalesi
{
    
    public partial class _Default : Page
    {
        public string descripcion { get; set; }
        public string codigo { get; set; }
        public string nombre { get; set; }
        public string imagenUrl { get; set; }
        public float precio { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            nombre = Session["nombre"].ToString();
            descripcion = Session["descripcion"].ToString();
            codigo = Session["codigo"].ToString();
            imagenUrl = Session["imagenUrl"].ToString();
            precio = (float)Session["precio"];

            lblNombre.Text = nombre;
            lblDescripcion.Text = descripcion;
            lblCodigo.Text = codigo;
            lblPrecio.Text = precio.ToString();
            


        }
    }
}