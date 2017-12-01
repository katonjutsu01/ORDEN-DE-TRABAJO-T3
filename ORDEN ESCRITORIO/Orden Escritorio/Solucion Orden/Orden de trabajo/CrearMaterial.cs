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
    public partial class CrearMaterial : Form
    {
        public CrearMaterial()
        {
            InitializeComponent();
            CargarLista();
        }
        public async void CargarLista()
        {
            List<entTipoMaterial> tm = await clienteRest.ListarTipoMaterial();
            cmbTipoMaterial.DataSource = tm;
            cmbTipoMaterial.DisplayMember = "descripcion";
            cmbTipoMaterial.ValueMember = "idtipomaterial";
        }

        private async void btnGuardar_Click(object sender, EventArgs e)
        {
            if (Verifartext())
            {


                Boolean insertarMaterial = await clienteRest.InsertarMaterial(txtNombreMaterial.Text, cmbTipoMaterial.SelectedValue.ToString());
                if (insertarMaterial)
                {
                    //limpiar();
                    Hide();
                    MessageBox.Show("Material creado correctamente", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    ListaMaterial lm = new ListaMaterial();
                    lm.Show();
                }
                else
                {
                    MessageBox.Show("No se ha podido Registrar el Material", "REGISTRO GUARDADO", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
            if (String.IsNullOrEmpty(txtNombreMaterial.Text.Trim()))
            {
                MessageBox.Show("Debe ingresar un Nombre Material", "VALIDAR", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

                return false;
            }
                else return true;
            
        }
    }
}
