using Microsoft.EntityFrameworkCore;
using DatabaseProject.Models;

namespace DatabaseProject.Data
{
    public class MyAppContext : DbContext
    {
        public MyAppContext(DbContextOptions<MyAppContext> options) : base(options) { }

        public DbSet<Item> Items { get; set;}
        public DbSet<Book> Books { get; set; }
        public DbSet<Movie> Movies { get; set; }
        public DbSet<Branch> Branches { get; set; }
        public DbSet<Patron> Patrons { get; set; }
    }
}
