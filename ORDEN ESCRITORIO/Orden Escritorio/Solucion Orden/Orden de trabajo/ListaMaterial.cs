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

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private async void ListaMaterial_Load(object sender, EventArgs e)
        {
            List<entMaterial> a = await clienteRest.ListarMaterial();
            dataMaterial.DataSource = a;
        }
    }
}
