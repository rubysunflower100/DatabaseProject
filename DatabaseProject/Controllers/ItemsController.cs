using Microsoft.AspNetCore.Mvc;

namespace DatabaseProject.Controllers
{
    public class ItemsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
