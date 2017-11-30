using Orden_de_trabajo.Clase_REST;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Orden_de_trabajo
{
    public partial class CrearActividad : Form
    {
        public CrearActividad()
        {
            InitializeComponent();
        }

        async private void btnGuardar_Click(object sender, EventArgs e)
        {
            
            Boolean insertarActividad = await clienteRest.InsertarActividad(txtDes.Text, txtTiempo.Text);
            if (insertarActividad)
            {
                //limpiar();
                MessageBox.Show("Actividad creada correcto", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
            }
            else
            {
                MessageBox.Show("No se ha podido Registrar Actividad");
            }
        }
    }
}
