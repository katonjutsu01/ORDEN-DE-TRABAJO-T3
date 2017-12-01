using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Orden_de_trabajo.Orden_Entidades
{
    public class entPresupuesto
    {
        public int idpresupuesto { get; set; }
        public double ?monto { get; set; }
        public String sector { get; set; }
        public int ?tiempo_estimado { get; set; }

        public override string ToString()
        {

            return this.monto.ToString();

        }
    }
}
