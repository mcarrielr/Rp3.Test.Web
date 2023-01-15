using Rp3.Test.Common.Models;
using Rp3.Test.Mvc.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Rp3.Test.Mvc.Controllers
{
    public class TransactionController : Controller
    {
        [Authorize()]
        public ActionResult Index()
        {
            Proxies.Proxy proxy = new Proxies.Proxy();

            var data = proxy.GetTransactions();

            List<Rp3.Test.Mvc.Models.TransactionViewModel> model = new List<Models.TransactionViewModel>();

            foreach (var item in data)
            {
                model.Add(new Models.TransactionViewModel()
                {
                    IdUsuario = item.IdUsuario,
                    Amount = item.Amount,
                    CategoryId = item.CategoryId,
                    CategoryName = item.CategoryName,
                    Notes = item.Notes,
                    RegisterDate =item.RegisterDate,
                    ShortDescription = item.ShortDescription,
                    TransactionId = item.TransactionId,
                    TransactionType = item.TransactionType,
                    TransactionTypeId = item.TransactionTypeId
                });
            }

            return View(model);
        }
        [Authorize()]
        [HttpGet()]

        public ActionResult Edit(int id)
        {

            Proxies.Proxy proxy = new Proxies.Proxy();

            TransactionView model = proxy.GetTransactions().FirstOrDefault(c => c.TransactionId == id);

            TransactionEditModel _retorno = new TransactionEditModel()
            {
                IdUsuario = model.IdUsuario,
                TransactionId = model.TransactionId,
                CategoryId = model.CategoryId,
                Notes = model.Notes,
                RegisterDate = model.RegisterDate,
                ShortDescription = model.ShortDescription,
                TransactionTypeId = model.TransactionTypeId,
                CategorySelectList = new SelectList(proxy.GetCategories(true), "CategoryId", "Name"),
                TransactionTypeSelectList = new SelectList(proxy.GetTransactionTypes(), "TransactionTypeId", "Name")
            };
            return View(_retorno);
        }
        [Authorize()]
        [HttpPost()]
        public ActionResult Edit(TransactionEditModel editModel)
        {
            Proxies.Proxy proxy = new Proxies.Proxy();
            Transaction commonModel = new Transaction();

            commonModel.IdUsuario = editModel.IdUsuario;
            commonModel.TransactionId = editModel.TransactionId;
            commonModel.TransactionTypeId = editModel.TransactionTypeId;
            commonModel.CategoryId = editModel.CategoryId;
            commonModel.RegisterDate = editModel.RegisterDate;
            commonModel.ShortDescription = editModel.ShortDescription;
            commonModel.Notes = editModel.Notes;

           bool respondeOk = proxy.UpdateTransactions(commonModel);

            return RedirectToAction("Index");


        }
        [Authorize()]
        [HttpGet()]
        public ActionResult Create()
        {
            Proxies.Proxy proxy = new Proxies.Proxy();
            ViewData["CategorySelectList"] =proxy.GetCategories(true);
            ViewData["TransactionTypeSelectList"] =proxy.GetTransactionTypes();
            Transaction model = new Transaction()
            {
                RegisterDate = DateTime.Now
            };
            return View(model);
        }
        [Authorize()]
        [HttpPost()]
        public ActionResult Create(Transaction modelo)
        {
            Proxies.Proxy proxy = new Proxies.Proxy();

            modelo.IdUsuario = (int)Session["idUsuario"];
            bool respondeOk = proxy.CreateTransactions(modelo);

            return RedirectToAction("Index");

        }

    }
}
