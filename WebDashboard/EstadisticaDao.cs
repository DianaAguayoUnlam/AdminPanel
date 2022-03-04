using System;

namespace Dao
{
	public class EstadisticaDao
	{
        Dashboard_dbEntities contexto;

        public EstadisticaDao(Dashboard_dbEntities context)
        {
            contexto = context;
        }

        public List<Productos> ObtenerCantidadProductosPorCategoria()
        {
            //            return contexto.Producto.Where(o => o.Nombre_usuario == nombreUsuario).FirstOrDefault();
            return contexto.Producto.List();
        }
    }
}
