using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Orden_de_trabajo.Orden_Entidades
{
    public class entUsuario
    {
        public int idUsuario { get; set; }
        public  entTrabajador Trabajador { get; set; }
        public String UserName { get; set; }
        public String Password { get; set; }
        public DateTime ?FechaDeCaducidad { get; set; }
        public Boolean ?Activo { get; set; }
        public String imagen { get; set; }
    }
}
