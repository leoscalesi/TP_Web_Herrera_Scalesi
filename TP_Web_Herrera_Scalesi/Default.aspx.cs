﻿using System;
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

        protected void Page_Load(object sender, EventArgs e)
        {

            descripcion = Session["descripcion"].ToString();

            lblNombre.Text = descripcion;


        }
    }
}