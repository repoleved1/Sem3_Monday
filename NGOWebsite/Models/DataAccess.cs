using Microsoft.EntityFrameworkCore;

namespace NGOWebsite.Models {
    public class GalleryDbContext : DbContext {
        public GalleryDbContext(DbContextOptions<GalleryDbContext> options)
        : base(options) { }

        public DbSet<Gallery> Gallery { get; set; }
        
    }

    public static class GalleryDbContextFactory {
        public static GalleryDbContext Create(string connectionStirng) {
            var optionsBuilder = new DbContextOptionsBuilder<GalleryDbContext>();
            optionsBuilder.UseMySQL(connectionStirng);
            var dbContext = new GalleryDbContext(optionsBuilder.Options);
            return dbContext;
        }
    }
}