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
    public partial class PantallaMantenedor : Form
    {
        public PantallaMantenedor()
        {
            InitializeComponent();
        }

        private void crearToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CrearActividad ca = new CrearActividad();
            ca.Show();
        }

        private void listarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ListaActividad la = new ListaActividad();
            la.Show();
            Hide();
        }

        private void listarToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            ListaMaterial lm = new ListaMaterial();
            lm.Show();
            Hide();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void mantenerdorMaterialToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void crearToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            CrearMaterial cm = new CrearMaterial();
            cm.Show();
            Hide();
        }
    }
}
