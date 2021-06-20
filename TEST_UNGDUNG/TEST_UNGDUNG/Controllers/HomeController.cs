using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ModelEF.DAO;

namespace TEST_UNGDUNG.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            var ProducTCDAO = new ProducTCDAO();
            ViewBag.NewProducts = ProducTCDAO.ListNewProduct(12);
            ViewBag.ListFeatureProducts = ProducTCDAO.ListFeatureProduct(4);

            return View();
        }
    }
}