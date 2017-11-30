using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Orden_de_trabajo.Orden_Entidades
{
    public class entTrabajador
    {
        public int idTrabajador { get; set; }
        public String nombres { get; set; }
        public String apellidos { get; set; }
        public String cargo { get; set; }
        public String area { get; set; }
        public String DNI { get; set; }
        public String Sexo { get; set; }
        public Boolean ? Estado { get; set; }
    }
}
