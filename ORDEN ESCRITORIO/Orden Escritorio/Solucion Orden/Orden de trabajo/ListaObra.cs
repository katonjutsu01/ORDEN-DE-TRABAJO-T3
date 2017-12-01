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
    public partial class ListaObra : Form
    {
        public ListaObra()
        {
            InitializeComponent();
        }

        private async void ListaObra_Load(object sender, EventArgs e)
        {

            List<entObra> a = await clienteRest.ListarObra();
            dataObra.DataSource = a;
        }

        private async void btnModificarObra_Click(object sender, EventArgs e)
        {
            if (Verifartext())
            {


                Boolean modificarObra = await clienteRest.ModificarObra(txtIdObra.Text, txtNombreObra.Text, txtDescripcionObra.Text, cmbPresupuestoObra.SelectedValue.ToString());
                if (modificarObra)
                {
                    //limpiar();
                    MessageBox.Show("Obra Modificada", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    List<entObra> m = await clienteRest.ListarObra();
                    dataObra.DataSource = m;
                }
                else
                {
                    MessageBox.Show("No se ha podido Modificar la Obra", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private async void dataObra_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtIdObra.Text = dataObra.CurrentRow.Cells[0].Value.ToString();
            txtIdObra.Enabled = false;
            entObra m = await clienteRest.DevolverObra(txtIdObra.Text);
            //comboBox
            List<entPresupuesto> tm = await clienteRest.ListarPresupuesto();
            cmbPresupuestoObra.DataSource = tm;
            cmbPresupuestoObra.DisplayMember = "monto";
            cmbPresupuestoObra.ValueMember = "idpresupuesto";
            if (m != null)
            {
                txtNombreObra.Text = m.nombre;
                txtDescripcionObra.Text = m.descripcion;
                //muestraTextoDeCombo
                cmbPresupuestoObra.Text = m.Presupuesto.monto.ToString();                
            }
        }

        private async void btnEliminarObra_Click(object sender, EventArgs e)
        {

            Boolean eliminarObra = await clienteRest.EliminarObra(txtIdObra.Text);
            if (eliminarObra)
            {
                //limpiar();
                MessageBox.Show("Obra Eliminada", "ELIMINADO REALIZADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                List<entObra> a = await clienteRest.ListarObra();
                dataObra.DataSource = a;
            }
            else
            {
                MessageBox.Show("No se ha podido eliminar la Obra","ELIMINAR OBRA", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
            if (String.IsNullOrEmpty(txtNombreObra.Text.Trim()))
            {
                MessageBox.Show("Debe ingresar un Nombre Obra", "VALIDAR", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                return false;
            }
            else
            {
                if (String.IsNullOrEmpty(txtDescripcionObra.Text.Trim()))
                {
                    MessageBox.Show("Debe ingresar una descripcion", "VALIDAR", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                    return false;
                }
                else return true;
            }
        }
    }
}
