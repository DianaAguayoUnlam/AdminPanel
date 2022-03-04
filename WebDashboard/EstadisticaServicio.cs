using Models;// Utilizo la capa Entidades para acceder al conector de la BD
using Dao; // Utilizo la capa DAO para manipular los datos de la BD 
using System.Web;

namespace Servicios
{
    public class EstadisticaServicio
    {
        EstadisticaDao estadisticaDao;

        public EstadisticaServicio(Dashboard_dbEntities context)
        {
            estadisticaDao = new EstadisticaDao(context);
        }

        // Obtener cantidad de productos por categoría
        public List<Productos> ObtenerCantidadProductosPorCategoria()
        {
            return estadisticaDao.ObtenerCantidadProductosPorCategoria();
        }
    }
}