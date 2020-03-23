using System.Linq;
using Microsoft.AspNetCore.Mvc;
using NGOWebsite.Models;

namespace NGOWebsite.Controllers {

    [Route("api/[controller]")]
    public class GallerysController : Controller {
        
         private GalleryDbContext dbContext;

        public GallerysController() {
            var connString = "server=localhost;port=3306;database=blog;userid=quangdv;pwd=1234567q;sslmode=none";
            this.dbContext = GalleryDbContextFactory.Create(connString);
        }


        [HttpGet]
        public ActionResult Get() {
            return Ok(this.dbContext.Gallery.ToArray());
        }

        [HttpGet("{id}")]
        public ActionResult Get(int id) {
            Gallery target = this.dbContext.Gallery.SingleOrDefault(ct => ct.ID == id);
            if (target != null) {
                return Ok(target);
            } else {
                return NotFound();
            }
        }
       

        [HttpPost]
        public ActionResult Post([FromBody]Gallery gallery) {
           if (!this.ModelState.IsValid) {
                return BadRequest();
            }
 
            this.dbContext.Gallery.Add(gallery);
            this.dbContext.SaveChanges();
            return Created($"api/gallerys/{gallery.ID}", gallery);
        }
        


        [HttpPut("{id}")]
        public ActionResult Put([FromRoute]int id, [FromBody]Gallery gallery) {
           if (!this.ModelState.IsValid) {
                return BadRequest();
            }

            Gallery target = this.dbContext.Gallery.SingleOrDefault(ct => ct.ID == id);
            if (target != null) {
                this.dbContext.Entry(target).CurrentValues.SetValues(gallery);
                this.dbContext.SaveChanges();
                return Ok();
            } else {
                return NotFound();
            }
        }
        

        [HttpDelete("{id}")]
        public ActionResult Delete(int id) {
            Gallery target = this.dbContext.Gallery.SingleOrDefault(ct => ct.ID == id);
            if (target != null) {
                this.dbContext.Gallery.Remove(target);
                this.dbContext.SaveChanges();
                return Ok();
            } else {
                return NotFound();
            }
        }
       
    }
}