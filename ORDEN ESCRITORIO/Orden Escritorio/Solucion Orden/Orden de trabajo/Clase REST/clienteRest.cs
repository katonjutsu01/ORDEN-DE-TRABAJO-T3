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
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Usuario/VerificarAcceso?user="+userName+"&pass="+password))
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
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Actividad/InsertarActividad?descripcion="+Descripcion+"&tiempoestimado="+tiempoestimado))
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
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Actividad/ListarActividad"))
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
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Actividad/DevolverActividad?idActividad="+id))
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
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Actividad/EditarActividad?idActividad=" + id + "&descripcion=" + Descripcion + "&tiempoestimado=" + tiempoestimado))
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
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Actividad/EliminarActividad?idActividad="+id))
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
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Material/ListarMaterial"))
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
        #endregion
        /*
        #region MANTENEDOR OBRA
        public static async Task<List<entObra>> ListarMaterial()
        {
            using (HttpClient rest = new HttpClient())
            {
                using (HttpResponseMessage response = await rest.GetAsync("http://localhost:8080/rest/Material/ListarMaterial"))
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
        #endregion*/
    }
}
