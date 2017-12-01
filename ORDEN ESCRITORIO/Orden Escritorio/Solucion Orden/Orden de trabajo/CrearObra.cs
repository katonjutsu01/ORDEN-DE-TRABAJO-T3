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
    public partial class CrearObra : Form
    {
        public CrearObra()
        {
            InitializeComponent();
            CargarLista();
        }

        public async void CargarLista()
        {
            List<entPresupuesto> tm = await clienteRest.ListarPresupuesto();
            cmbPresupuestoObra.DataSource = tm;
            cmbPresupuestoObra.DisplayMember = "monto";
            cmbPresupuestoObra.ValueMember = "idpresupuesto";
        }
        private async void button1_Click(object sender, EventArgs e)
        {
            if (Verifartext())
            {


                Boolean insertarObra = await clienteRest.InsertarObra(txtNombreObra.Text, txtDescripcionObra.Text, cmbPresupuestoObra.SelectedValue.ToString());
                if (insertarObra)
                {
                    //limpiar();
                    Hide();
                    MessageBox.Show("Obra creado correctamente", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    ListaObra lm = new ListaObra();
                    lm.Show();
                }
                else
                {
                    MessageBox.Show("No se ha podido Registrar el Obra", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
