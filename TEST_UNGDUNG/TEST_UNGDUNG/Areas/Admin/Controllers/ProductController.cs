using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ModelEF.DAO;
using ModelEF.Model;
using TEST_UNGDUNG.Areas.Admin.Model;
namespace TEST_UNGDUNG.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        // GET: Admin/Product
        public ActionResult Index()
        {
            var model = new ProductDAO().ListAll();
            return View(model);

        }
        public ActionResult Detail(int Id)
        {
            var model = new ProductDAO().ListWhere(Id);
            return View(model);
        }
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(SanPham product)
        {
            if (ModelState.IsValid)
            {
               
                        var pr = new ProductDAO();
                  
                        if (pr.Insert(product) == true)
                        {
                            return RedirectToAction("Index", "Product");
                        }
                        else
                        {
                            ModelState.AddModelError("", "Thất bại");
                        }
            }
            SetViewBag(product.IDLoai);
            return View();

        }
        public void SetViewBag(int? selectedid = null)
        {
            var dao = new ProductTypeDAO();
            ViewBag.IDLoai = new SelectList(dao.ListAll(), "ID", "Name", selectedid);
        }
    }
}