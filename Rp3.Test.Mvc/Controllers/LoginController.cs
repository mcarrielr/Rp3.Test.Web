using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Rp3.Test.Mvc.Models;
namespace Rp3.Test.Mvc.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        [HttpGet]
        public ActionResult Index()
        {
            FormsAuthentication.SignOut();
            return View();
        }
        [HttpPost]
        public ActionResult Index(Usuario _modelo)
        {
            Proxies.Proxy proxy = new Proxies.Proxy();

            var data = proxy.GetUsuario(_modelo.usuario, _modelo.clave);
            if (data != null)
            {
                FormsAuthentication.SetAuthCookie(_modelo.usuario, true);
                Session["idUsuario"] = data.idUsuario;
                Session["usuario"] = data.usuario;
                Session["nombreApellido"] = data.nombreApellido;
                return RedirectToAction("Index", "Home");
            }
            return View();
        }
    }
}