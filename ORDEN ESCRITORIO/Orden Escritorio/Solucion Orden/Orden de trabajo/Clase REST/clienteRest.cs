using Orden_de_trabajo.Orden_Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

using Newtonsoft.Json;
namespace Orden_de_trabajo.Clase_REST
{
    public static class clienteRest
    {

        public static async Task<entUsuario> VerificarAcceso(String userName, String password)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Usuario/VerificarAcceso?user=" + userName+"&pass="+password))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<entUsuario>(b);
                        entUsuario u = (entUsuario)obj;

                        if (u != null)
                        {
                            return await Task.Run(() => u);
                        }
                        else
                            return await Task.FromResult<entUsuario>(null);
                    }

                }

            }

        }
        #region MANTENEDOR ACTIVIDAD

        public static async Task<Boolean> InsertarActividad(String Descripcion, String tiempoestimado)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Actividad/InsertarActividad?descripcion=" + Descripcion+"&tiempoestimado="+tiempoestimado))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<Boolean>(b);
                        Boolean inserto = (Boolean)obj;
                        return await Task.Run(() => inserto);
                    }

                }

            }

        }
        public static async Task<List<entActividad>> ListarActividad()
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Actividad/ListarActividad"))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<List<entActividad>>(b);
                        List<entActividad> u = obj.ToList();
                        if (u != null)
                        {
                            return await Task.Run(() => u);
                        }
                        else
                            return await Task.FromResult<List<entActividad>>(null);
                    }

                }

            }

        }
        public static async Task<entActividad> DevolverActividad(String id)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Actividad/DevolverActividad?idActividad=" + id))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<entActividad>(b);
                        entActividad a = (entActividad)obj;
                        if (a != null)
                        {
                            return await Task.Run(() => a);
                        }
                        else
                            return await Task.FromResult<entActividad>(null);
                    }

                }

            }

        }
        public static async Task<Boolean> ModificarActividad(String Descripcion, String tiempoestimado,String id)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Actividad/EditarActividad?idActividad=" + id + "&descripcion=" + Descripcion + "&tiempoestimado=" + tiempoestimado))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<Boolean>(b);
                        Boolean modifico = (Boolean)obj;
                        return await Task.Run(() => modifico);
                    }

                }

            }

        }
        public static async Task<Boolean> EliminarActividad(String id)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Actividad/EliminarActividad?idActividad=" + id))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<Boolean>(b);
                        Boolean elimino = (Boolean)obj;
                        return await Task.Run(() => elimino);
                    }

                }

            }

        }
        #endregion
        
        #region MANTENEDOR MATERIAL
        public static async Task<List<entMaterial>> ListarMaterial()
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Material/ListarMaterial"))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<List<entMaterial>>(b);
                        List<entMaterial> m = obj.ToList();
                        if (m != null)
                        {
                            return await Task.Run(() => m);
                        }
                        else
                            return await Task.FromResult<List<entMaterial>>(null);
                    }

                }

            }

        }

        public static async Task<List<entTipoMaterial>> ListarTipoMaterial()
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/TipoMaterial/ListarTipoMaterial"))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<List<entTipoMaterial>>(b);
                        List<entTipoMaterial> tm = obj.ToList();
                        if (tm != null)
                        {
                            return await Task.Run(() => tm);
                        }
                        else
                            return await Task.FromResult<List<entTipoMaterial>>(null);
                    }

                }

            }

        }
        public static async Task<Boolean> InsertarMaterial(String nombre, String idTipMat)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Material/InsertarMaterial?nombre=" + nombre + "&idtipomaterial=" + idTipMat))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<Boolean>(b);
                        Boolean inserto = (Boolean)obj;
                        return await Task.Run(() => inserto);
                    }

                }

            }
        }


        public static async Task<entMaterial> DevolverMaterial(String id)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Material/DevolverMaterial?idmaterial=" + id))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<entMaterial>(b);
                        entMaterial a = (entMaterial)obj;
                        if (a != null)
                        {
                            return await Task.Run(() => a);
                        }
                        else
                            return await Task.FromResult<entMaterial>(null);
                    }

                }

            }

        }

        public static async Task<Boolean> ModificarMaterial(String idMat, String nombre, String idTipMat)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Material/EditarMaterial?idmaterial=" + idMat + "&nombre=" + nombre + "&idtipomaterial=" + idTipMat))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<Boolean>(b);
                        Boolean modifico = (Boolean)obj;
                        return await Task.Run(() => modifico);
                    }

                }

            }

        }

        public static async Task<Boolean> EliminarMaterial(String id)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Material/EliminarMaterial?idmaterial=" + id))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<Boolean>(b);
                        Boolean elimino = (Boolean)obj;
                        return await Task.Run(() => elimino);
                    }

                }

            }

        }
        #endregion

        


        #region MANTENEDOR OBRA

        public static async Task<List<entObra>> ListarObra()
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Obra/ListarObra"))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<List<entObra>>(b);
                        List<entObra> m = obj.ToList();
                        if (m != null)
                        {
                            return await Task.Run(() => m);
                        }
                        else
                            return await Task.FromResult<List<entObra>>(null);
                    }

                }

            }

        }

        public static async Task<List<entPresupuesto>> ListarPresupuesto()
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Presupuesto/ListarPresupuesto"))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<List<entPresupuesto>>(b);
                        List<entPresupuesto> tm = obj.ToList();
                        if (tm != null)
                        {
                            return await Task.Run(() => tm);
                        }
                        else
                            return await Task.FromResult<List<entPresupuesto>>(null);
                    }

                }

            }

        }
        public static async Task<Boolean> InsertarObra(String nombre, String Descripcion, String idpresupuesto)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Obra/InsertarObra?nombre=" + nombre + "&descripcion="+Descripcion+"&idpresupuesto=" + idpresupuesto))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<Boolean>(b);
                        Boolean inserto = (Boolean)obj;
                        return await Task.Run(() => inserto);
                    }

                }

            }
        }


        public static async Task<entObra> DevolverObra(String id)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://sowad64496.azurewebsites.net/RestT3/Obra/DevolverObra?idobra=" + id))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<entObra>(b);
                        entObra a = (entObra)obj;
                        if (a != null)
                        {
                            return await Task.Run(() => a);
                        }
                        else
                            return await Task.FromResult<entObra>(null);
                    }

                }

            }

        }

        public static async Task<Boolean> ModificarObra(String idobra,String nombre, String Descripcion, String idpresupuesto)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Obra/EditarObra?idobra=" + idobra + "&nombre="+nombre+"&descripcion="+Descripcion+"&idpresupuesto="+idpresupuesto+"&activo=" + true))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<Boolean>(b);
                        Boolean modifico = (Boolean)obj;
                        return await Task.Run(() => modifico);
                    }

                }

            }

        }

        public static async Task<Boolean> EliminarObra(String id)
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Obra/EliminarObra?idobra=" + id))
                {
                    using (HttpContent content = response.Content)
                    {
                        String b = await content.ReadAsStringAsync();
                        var obj = JsonConvert.DeserializeObject<Boolean>(b);
                        Boolean elimino = (Boolean)obj;
                        return await Task.Run(() => elimino);
                    }

                }

            }

        }
        #endregion
        
    }
}
