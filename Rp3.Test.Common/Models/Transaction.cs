using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rp3.Test.Common.Models
{
    public class Transaction
    {
        public int IdUsuario { get; set; }
        public int TransactionId { get; set; }
        public short TransactionTypeId { get; set; }
        public int CategoryId { get; set; }
        [Withinday]
        public DateTime RegisterDate { get; set; }
        [RegularExpression("(.*[1-9].*)|(.*[.].*[1-9].*)", ErrorMessage = "El valor debe diferente de cero")]
        public decimal Amount { get; set; }
        [Required]
        public string ShortDescription { get; set; }
        public string Notes { get; set; }
    }
}
