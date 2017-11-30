using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Orden_de_trabajo.Orden_Entidades
{
    public class entMaterial
    {
        public int idmaterial { get; set; }
        public String nombre { get; set; }
        public entTipoMaterial TipoMaterial { get; set; }
    }
}
