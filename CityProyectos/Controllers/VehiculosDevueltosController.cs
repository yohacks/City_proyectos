using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using CityProyectos.Models;

namespace CityProyectos.Controllers
{
    public class VehiculosDevueltosController : ApiController
    {
        private ModelDB db = new ModelDB();

        // GET: api/VehiculosDevueltos
        public IQueryable<VEHICULO> GetVehiculosdevueltos()
        {
            var VEHICULOS = db.ITEM_FACTURABLE.Where(it=> it.ESTADO_NEGOCIO.VALOR =="Devuelto").Select(v=>v.VEHICULO);
            return VEHICULOS;
        }

        // GET: api/VehiculosDevueltos/5
        [ResponseType(typeof(ITEM_FACTURABLE))]
        public IHttpActionResult GetITEM_FACTURABLE(Guid id)
        {
            ITEM_FACTURABLE iTEM_FACTURABLE = db.ITEM_FACTURABLE.Find(id);
            if (iTEM_FACTURABLE == null)
            {
                return NotFound();
            }

            return Ok(iTEM_FACTURABLE);
        }

        // PUT: api/VehiculosDevueltos/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutITEM_FACTURABLE(Guid id, ITEM_FACTURABLE iTEM_FACTURABLE)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != iTEM_FACTURABLE.GUID)
            {
                return BadRequest();
            }

            db.Entry(iTEM_FACTURABLE).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ITEM_FACTURABLEExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/VehiculosDevueltos
        [ResponseType(typeof(ITEM_FACTURABLE))]
        public IHttpActionResult PostITEM_FACTURABLE(ITEM_FACTURABLE iTEM_FACTURABLE)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.ITEM_FACTURABLE.Add(iTEM_FACTURABLE);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (ITEM_FACTURABLEExists(iTEM_FACTURABLE.GUID))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = iTEM_FACTURABLE.GUID }, iTEM_FACTURABLE);
        }

        // DELETE: api/VehiculosDevueltos/5
        [ResponseType(typeof(ITEM_FACTURABLE))]
        public IHttpActionResult DeleteITEM_FACTURABLE(Guid id)
        {
            ITEM_FACTURABLE iTEM_FACTURABLE = db.ITEM_FACTURABLE.Find(id);
            if (iTEM_FACTURABLE == null)
            {
                return NotFound();
            }

            db.ITEM_FACTURABLE.Remove(iTEM_FACTURABLE);
            db.SaveChanges();

            return Ok(iTEM_FACTURABLE);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ITEM_FACTURABLEExists(Guid id)
        {
            return db.ITEM_FACTURABLE.Count(e => e.GUID == id) > 0;
        }
    }
}