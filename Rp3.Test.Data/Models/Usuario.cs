using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rp3.Test.Data.Models
{

    [Table("tbUsuario", Schema = "dbo")]
    public class Usuario
    {
        [Key]
        public int idUsuario { get; set; }
        public string nombreApellido { get; set; }
        public string usuario { get; set; }
        public string clave { get; set; }
    }
}
