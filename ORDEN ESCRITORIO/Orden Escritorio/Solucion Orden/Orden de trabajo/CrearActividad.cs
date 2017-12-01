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
            if (Verifartext())
            {


                Boolean insertarActividad = await clienteRest.InsertarActividad(txtDes.Text, txtTiempo.Text);
                if (insertarActividad)
                {
                    //limpiar();
                    Hide();
                    MessageBox.Show("Actividad creada correcto", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    ListaActividad la = new ListaActividad();
                    la.Show();
                }
                else
                {
                    MessageBox.Show("No se ha podido Registrar Actividad", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            PantallaMantenedor pm = new PantallaMantenedor();
            pm.Show();
            Hide();
        }
        public Boolean Verifartext()
        {
            if (String.IsNullOrEmpty(txtDes.Text.Trim()))
            {
                MessageBox.Show("Debe ingresar una descripcion", "VALIDAR", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);                
                
                return false;
            }else
            {
                if (String.IsNullOrEmpty(txtTiempo.Text.Trim()))
                {
                    MessageBox.Show("Debe ingresar un tiempo", "VALIDAR", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    
                    return false;
                }
                else return true;
            }
        }
    }
}
