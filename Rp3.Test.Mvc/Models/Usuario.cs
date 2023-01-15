using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rp3.Test.Mvc.Models
{
    public class Usuario
    {
        public short idUsuario { get; set; }
        public string nombreApellido { get; set; }
        public string usuario { get; set; }
        public string clave { get; set; }
    }
}