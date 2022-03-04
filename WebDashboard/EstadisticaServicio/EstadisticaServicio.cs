using Dao.EstadisticaDao;
using Entidades;
using Entidades.ViewModel;
using System;
using System.Collections.Generic;

namespace Servicios.EstadisticaServicio
{
    public class EstadisticaServicio
    {
        EstadisticaDao estadisticaDao;

        public EstadisticaServicio(Dashboard_dbEntities context)
        {
            estadisticaDao = new EstadisticaDao(context);
        }

        // Obtener cantidad de productos por categoría
        public List<Categoria> ObtenerCantidadProductosPorCategoria()
        {
            return estadisticaDao.ObtenerCantidadProductosPorCategoria();
        }

        public List<Imagen> ObtenerImagenesPorIdProducto(int idProducto)
        {
            return estadisticaDao.ObtenerImagenesPorIdProducto(idProducto);
        }

        public List<CompraVM> ObtenerCantidadDeVentasPorAnio()
        {
            return estadisticaDao.ObtenerCantidadDeVentasPorAnio();
        }
    }
}
