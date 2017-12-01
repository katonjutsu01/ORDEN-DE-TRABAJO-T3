using Orden_de_trabajo.Clase_REST;
using Orden_de_trabajo.Orden_Entidades;
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
    public partial class ListaActividad : Form
    {
        public ListaActividad()
        {
            InitializeComponent();
        }

        private async void ListaActividad_Load(object sender, EventArgs e)
        {
            List<entActividad> a = await clienteRest.ListarActividad();
            dataActividad.DataSource = a;
        }

        private async void btnModificarActividad_Click(object sender, EventArgs e)
        {
            if (Verifartext())
            {


                Boolean modificarActividad = await clienteRest.ModificarActividad(txtDescripcion.Text, txtTiempo.Text, txtid.Text);
                if (modificarActividad)
                {
                    //limpiar();
                    MessageBox.Show("Actividad Modificada", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    List<entActividad> a = await clienteRest.ListarActividad();
                    dataActividad.DataSource = a;
                }
                else
                {
                    MessageBox.Show("No se ha podido Modificar Actividad", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private async void dataActividad_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtid.Text = dataActividad.CurrentRow.Cells[0].Value.ToString();
            txtid.Enabled=false;
            entActividad u = await clienteRest.DevolverActividad(txtid.Text);
            if (u != null)
            {
                txtDescripcion.Text = u.descripcion;
                txtTiempo.Text = u.tiempoestimado.ToString();
            }
        }

        private async void btnEliminarActividad_Click(object sender, EventArgs e)
        {
            Boolean eliminarActividad = await clienteRest.EliminarActividad(txtid.Text);
            if (eliminarActividad)
            {
                //limpiar();
                MessageBox.Show("Actividad Eliminada", "ELIMINADO REALIZADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                List<entActividad> a = await clienteRest.ListarActividad();
                dataActividad.DataSource = a;
            }
            else
            {
                MessageBox.Show("No se ha podido eliminar la Actividad", "ELIMINAR ACTIVIDAD", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
            if (String.IsNullOrEmpty(txtDescripcion.Text.Trim()))
            {
                MessageBox.Show("Debe ingresar una descripcion", "VALIDAR", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                return false;
            }
            else
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
