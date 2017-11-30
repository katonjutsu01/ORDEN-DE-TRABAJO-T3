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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        async private void btnIngresar_Click(object sender, EventArgs e)
        {
            entUsuario u = await clienteRest.VerificarAcceso(txtUsuario.Text, txtContraseña.Text);
            if (u != null)
            {
                MessageBox.Show("Bienvenido:" + u.Trabajador.nombres + " " + u.Trabajador.apellidos);
                PantallaMantenedor p = new PantallaMantenedor();
                p.Show();
                Hide();
            }
            else
            {
                MessageBox.Show("Usuario o Contraseña Incorrectos");
            }
        }
    }
}
