using Microsoft.AspNetCore.Mvc;
using DatabaseProject.Models;

namespace DatabaseProject.Controllers
{
    public class ItemsController : Controller
    {
        public IActionResult Overview()
        {
            var item = new Item() { Name = "keyboard" };
            return View(item);
        }
        public IActionResult Edit(int ItemId)
        {
            return Content("id= " + ItemId);
        }
    }
}
