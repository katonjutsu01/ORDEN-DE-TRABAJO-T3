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
    public partial class ListaMaterial : Form
    {
        public ListaMaterial()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private async void button2_Click(object sender, EventArgs e)
        {
            
            Boolean eliminarActividad = await clienteRest.EliminarMaterial(txtIdMaterial.Text);
            if (eliminarActividad)
            {
                //limpiar();
                MessageBox.Show("Material Eliminado", "ELIMINADO REALIZADO", MessageBoxButtons.OK, MessageBoxIcon.Error);
                List<entMaterial> a = await clienteRest.ListarMaterial();
                dataMaterial.DataSource = a;
            }
            else
            {
                MessageBox.Show("No se ha podido eliminar la Material");
            }
        }

        private async void ListaMaterial_Load(object sender, EventArgs e)
        {
            List<entMaterial> a = await clienteRest.ListarMaterial();
            dataMaterial.DataSource = a;
        }

        private async void btnModificarMaterial_Click(object sender, EventArgs e)
        {
            Boolean modificarMaterial = await clienteRest.ModificarMaterial(txtIdMaterial.Text, txtNombreMaterial.Text, cmbTipo.SelectedValue.ToString());
            if (modificarMaterial)
            {
                //limpiar();
                MessageBox.Show("Material Modificada", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                List<entMaterial> m = await clienteRest.ListarMaterial();
                dataMaterial.DataSource = m;
            }
            else
            {
                MessageBox.Show("No se ha podido Modificar el Material");
            }
        }

        private async void dataMaterial_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtIdMaterial.Text = dataMaterial.CurrentRow.Cells[0].Value.ToString();
            txtIdMaterial.Enabled = false;
            entMaterial m = await clienteRest.DevolverMaterial(txtIdMaterial.Text);
            //comboBox
            List<entTipoMaterial> tm = await clienteRest.ListarTipoMaterial();
            cmbTipo.DataSource = tm;
            cmbTipo.DisplayMember = "descripcion";
            cmbTipo.ValueMember = "idtipomaterial";
            if (m != null)
            {
                txtNombreMaterial.Text = m.nombre;
                //muestraTextoDeCombo
                cmbTipo.Text = m.TipoMaterial.descripcion;                
            }
        }
    }
}
