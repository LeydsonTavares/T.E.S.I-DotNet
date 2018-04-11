using System.Data.Entity;

namespace Blog.Models
{
    public class PostContext : DbContext
    {
        public PostContext() : base("Blog")
        {

        }

        public DbSet<Post> Posts { get; set; }
    }
}