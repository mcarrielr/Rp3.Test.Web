using Rp3.Test.Data;
using Rp3.Test.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Xml;

namespace Rp3.Test.WebApi.Data.Controllers
{
    public class BalanceDataController : ApiController
    {

        [HttpGet]
        public IHttpActionResult GetBalance(int usuario)
        {
           List<Balance> commonModel = null;
            XmlDocument xmlParam = new XmlDocument();
            xmlParam.LoadXml("<spBalanceTotal />");
            xmlParam.DocumentElement.SetAttribute("Usuario", usuario.ToString());
            using (DataService service = new DataService())
            {

                commonModel = service.Categories.DataBase.SqlQuery<Balance>("EXEC dbo.spBalanceTotal @infoXml = {0}", xmlParam.OuterXml).ToList();

            }
            return Ok(commonModel);
        }

    }
}
