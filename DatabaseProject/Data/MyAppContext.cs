using Microsoft.EntityFrameworkCore;
using DatabaseProject.Models;

namespace DatabaseProject.Data
{
    public class MyAppContext : DbContext
    {
        public MyAppContext(DbContextOptions<MyAppContext> options) : base(options) { }

        public DbSet<Item> Items { get; set;}
    }
}
