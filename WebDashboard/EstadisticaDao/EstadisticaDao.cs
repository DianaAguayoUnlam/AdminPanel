using Entidades;
using Entidades.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao.EstadisticaDao
{
    public class EstadisticaDao
    {
        Dashboard_dbEntities contexto;

        public EstadisticaDao(Dashboard_dbEntities context)
        {
            contexto = context;
        }

        public List<Categoria> ObtenerCantidadProductosPorCategoria()
        {
            return contexto.Categoria.ToList();
        }

        public List<Imagen> ObtenerImagenesPorIdProducto(int idProducto)
        {
            return contexto.Imagen.Where(i => i.idProducto == idProducto).ToList();
        }

        public List<CompraVM> ObtenerCantidadDeVentasPorAnio()
        {
            var cantidadDeVentasPorAnio = contexto.sp_ObtenerCantidadDeVentasPorAnio().ToList();

            //Este list es un View model creado con los atributos: Anio int, TotalVentas int.
            List<CompraVM> listaVMCompras = new List<CompraVM>();

            foreach (var ventaAnual in cantidadDeVentasPorAnio)
            {
                CompraVM VMcompra = new CompraVM();

                VMcompra.Anio = (int)ventaAnual.anio;
                VMcompra.TotalVentas = (decimal)ventaAnual.ventas;

                listaVMCompras.Add(VMcompra);
            }
            return listaVMCompras;
        }
    }
}
