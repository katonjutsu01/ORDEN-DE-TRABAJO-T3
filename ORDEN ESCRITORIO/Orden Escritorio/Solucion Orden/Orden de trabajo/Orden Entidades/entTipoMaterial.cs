using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Orden_de_trabajo.Orden_Entidades
{
    public class entTipoMaterial
    {
        public int idtipomaterial { get; set; }
        public String descripcion { get; set; }
        public Boolean ? activo { get; set; }
        public override string ToString()
        {

            return this.descripcion;

        }
    }
    
}
