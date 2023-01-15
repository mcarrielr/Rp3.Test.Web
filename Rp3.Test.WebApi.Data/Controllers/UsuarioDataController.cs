using Rp3.Test.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
namespace Rp3.Test.WebApi.Data.Controllers
{
    public class UsuarioDataController : ApiController
    {
        // GET: UsuarioData
        [HttpGet]
        public IHttpActionResult Get(string usuario, string clave)
        {
            Rp3.Test.Common.Models.Usuario commonModel = null;
            using (DataService service = new DataService())
            {
                var model = service.Usuarios.Get().FirstOrDefault(e => e.usuario == usuario && e.clave == clave);
                //.FirstOrDefault(e => e.usuario == usuario && e.clave == clave); 
                if (model!=null)
                {
                    commonModel = new Common.Models.Usuario()
                    {
                        nombreApellido = model.nombreApellido,
                        usuario = model.usuario,
                        clave = model.clave,
                        idUsuario = model.idUsuario
                    };
                }
                
            }
            return Ok(commonModel);
        }
    }
}