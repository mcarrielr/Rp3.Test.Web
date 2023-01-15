using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Rp3.Test.Mvc.Controllers
{
    public class BalanceController : Controller
    {
        [Authorize()]
        public ActionResult Index()
        {
            Proxies.Proxy proxy = new Proxies.Proxy();

            var data = proxy.GetBalance(Session["idUsuario"].ToString());

            List<Rp3.Test.Mvc.Models.BalanceViewModel> model = new List<Models.BalanceViewModel>();

            foreach (var item in data)
            {
                model.Add(new Models.BalanceViewModel()
                {
                    Categoria = item.Categoria,
                    Saldo = item.Saldo
                });
            }

            return View(model);
        }
    }
}