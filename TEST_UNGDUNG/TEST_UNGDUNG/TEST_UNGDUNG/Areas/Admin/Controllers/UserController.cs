using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ModelEF.DAO;
using PagedList;
namespace TEST_UNGDUNG.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        // GET: Admin/User
        //public ActionResult Index(int page=1, int pagesize =1)
        //{
        //    var user = new UserDao();
        //    var model = user.ListAll();
        //    return View(model);
        //}
        
        public ActionResult Index(string searchString, int page=1, int pagesize=5)
        {
            var user = new UserDao();
            var model = user.ListWhereAll(searchString, page,pagesize);
            ViewBag.SearchString = searchString;
            return View(model);
        }
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            var dao = new UserDao().Delete(id);
            return RedirectToAction("Index");
        }
    }
}