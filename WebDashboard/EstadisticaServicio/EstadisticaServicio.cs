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

        public List<Producto> ObtenerProductosPorMarca(int idMarca)
        {
            return estadisticaDao.ObtenerProductosPorMarca(idMarca);
        }

        public List<Marca> ObtenerMarcas()
        {
            return estadisticaDao.ObtenerMarcas();
        }

        public List<Producto> ObtenerProductosPorCategoria(int idCategory)
        {
            return estadisticaDao.ObtenerProductosPorCategoria(idCategory);
        }

        public dynamic ObtenerCategorias()
        {
            return estadisticaDao.ObtenerCategorias();
        }

        public Marca ObtenerMarcaPorId(int idMarca)
        {
            return estadisticaDao.ObtenerMarcaPorId(idMarca);
        }
    }
}
