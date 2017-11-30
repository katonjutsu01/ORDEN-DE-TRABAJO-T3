using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Orden_de_trabajo.Orden_Entidades
{
    public class entObra
    {
        public int idobra { get; set; }
        public String descripcion { get; set; }
        public entPresupuesto Presupuesto { get; set; }
        public String nombre { get; set; }
        public Boolean activo { get; set; }
    }
}
