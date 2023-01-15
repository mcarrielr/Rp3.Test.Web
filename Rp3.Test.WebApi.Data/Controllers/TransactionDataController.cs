using Rp3.Test.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Rp3.Test.WebApi.Data.Controllers
{
    public class TransactionDataController : ApiController
    {
        [HttpGet]
        public IHttpActionResult Get()
        {
            List<Rp3.Test.Common.Models.TransactionView> commonModel = new List<Common.Models.TransactionView>();

            using (DataService service = new DataService())
            {
                IEnumerable<Rp3.Test.Data.Models.Transaction>
                    dataModel = service.Transactions.Get(
                    includeProperties: "Category,TransactionType",
                    orderBy: p => p.OrderByDescending(o => o.RegisterDate));

                commonModel = dataModel.Select(p => new Common.Models.TransactionView()
                {
                    CategoryId = p.CategoryId,
                    IdUsuario = p.IdUsuario,
                    CategoryName = p.Category.Name,
                    Notes = p.Notes,
                    Amount = p.Amount,
                    RegisterDate = p.RegisterDate,
                    ShortDescription = p.ShortDescription,
                    TransactionId = p.TransactionId,
                    TransactionType = p.TransactionType.Name,
                    TransactionTypeId = p.TransactionTypeId
                }).ToList();
            }

            return Ok(commonModel);
        }

        public IHttpActionResult Insert(Rp3.Test.Common.Models.Transaction transaction)
        {
            //Complete the code
            using (DataService service = new DataService())
            {
                Rp3.Test.Data.Models.Transaction model = new Test.Data.Models.Transaction();
                model.TransactionId = service.Transactions.GetMaxValue<int>(p => p.TransactionId, 0) + 1;
                model.CategoryId = transaction.CategoryId;
                model.IdUsuario = transaction.IdUsuario;
                model.RegisterDate = transaction.RegisterDate;
                model.TransactionTypeId = transaction.TransactionTypeId;
                model.ShortDescription = transaction.ShortDescription;
                model.Amount = transaction.Amount;
                model.Notes = transaction.Notes;
                service.Transactions.Insert(model);
                service.SaveChanges();
            }

            return Ok();
        }

        public IHttpActionResult Update(Rp3.Test.Common.Models.Transaction transaction)
        {
            Rp3.Test.Data.Models.Transaction transactionModel = new Test.Data.Models.Transaction();

            using (DataService service = new DataService())
            {
                transactionModel = service.Transactions.GetByID(transaction.TransactionId);

                transactionModel.TransactionId = transaction.TransactionId;
                transactionModel.TransactionTypeId = transaction.TransactionTypeId;
                transactionModel.CategoryId = transaction.CategoryId;
                transactionModel.RegisterDate = transaction.RegisterDate;
                transactionModel.ShortDescription = transaction.ShortDescription;
                transactionModel.Notes = transaction.Notes;
                transactionModel.IdUsuario = transaction.IdUsuario;

                service.Transactions.Update(transactionModel);
                service.SaveChanges();
            }
            return Ok();
        }
    }
}
