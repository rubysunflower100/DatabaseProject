using Microsoft.AspNetCore.Mvc;
using DatabaseProject.Models;
using DatabaseProject.Data;
using Microsoft.EntityFrameworkCore;

namespace DatabaseProject.Controllers
{
    public class ItemsController : Controller
    {
        private readonly MyAppContext _context;
        public ItemsController(MyAppContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            var item = await _context.Items.ToListAsync();
            return View();
        }
    }

}
