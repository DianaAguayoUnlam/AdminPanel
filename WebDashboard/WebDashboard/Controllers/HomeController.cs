
using System.Collections;
using System.Collections.Generic;
using System.Web.Mvc;
using Entidades;
using Entidades.ViewModel;
using Servicios.EstadisticaServicio;

namespace WebDashboard.Controllers
{
    public class HomeController : Controller
    {
        EstadisticaServicio estadisticaServicio;

        public HomeController()
        {
            Dashboard_dbEntities context = new Dashboard_dbEntities();
            estadisticaServicio = new EstadisticaServicio(context);
        }

        public ActionResult Index()
        {
            ViewBag.Message = "Your application description page.";
            ArrayList Estadisticas = new ArrayList();
            List<Categoria> categorias = estadisticaServicio.ObtenerCantidadProductosPorCategoria();
            ViewBag.Categorias = categorias;
            return View();
        }


        public PartialViewResult ResizeCard()
        {
            List<Categoria> categorias = estadisticaServicio.ObtenerCantidadProductosPorCategoria();
            return PartialView("_ResizeCard", categorias);
        }

        public PartialViewResult ActualizarResizeCard()
        {
            List<Categoria> categorias = estadisticaServicio.ObtenerCantidadProductosPorCategoria();
            return PartialView("_ResizeCard", categorias);
        }


        public PartialViewResult ImagenProducto()
        {
            ViewBag.defaultImgUrl = "https://via.placeholder.com/600/54176f";
            return PartialView("_ImgProducto");
        }

        public PartialViewResult ActualizarImagenProducto(int idProducto)
        {
            List<Imagen> imagenesUrl = estadisticaServicio.ObtenerImagenesPorIdProducto(idProducto);
            return PartialView("_ImgProducto", imagenesUrl);
        }
        

        public PartialViewResult VentasPorAnio()
        {
            List<CompraVM> vmCompras = estadisticaServicio.ObtenerCantidadDeVentasPorAnio();
            return PartialView("_VentasPorAnio", vmCompras);
        }

        public PartialViewResult ProductosPorMarca()
        {
            List<Producto> productos = estadisticaServicio.ObtenerProductosPorMarca(1);
            ViewBag.marcas = estadisticaServicio.ObtenerMarcas();
            return PartialView("_ProductosMarca", productos);
        }
        

        public ActionResult ActualizarProductosPorMarca(int idmarca)
        {
            List<Producto> productos = estadisticaServicio.ObtenerProductosPorMarca(idmarca);
            ViewBag.marcas = estadisticaServicio.ObtenerMarcas();
            ViewBag.idmarca = idmarca;
            return PartialView("_ProductosMarca", productos);
        }
        
        public PartialViewResult ProductosPorCategoria()
        {
            List<Producto> productos = estadisticaServicio.ObtenerProductosPorCategoria(1);
            ViewBag.categorias = estadisticaServicio.ObtenerCategorias();
            return PartialView("_ProductosCategoria", productos);
        }


        public ActionResult ActualizarProductosPorCategoria(int idCategory)
        {
            List<Producto> productos = estadisticaServicio.ObtenerProductosPorCategoria(idCategory);
            ViewBag.categorias = estadisticaServicio.ObtenerCategorias();
            ViewBag.idcategory = idCategory;
            return PartialView("_ProductosCategoria", productos);
        }
        // CantidadPorMarca
        public PartialViewResult ImagenPorMarca()
        {
            Marca marca = estadisticaServicio.ObtenerMarcaPorId(1);
            ViewBag.marcas = estadisticaServicio.ObtenerMarcas();
            return PartialView("_ImagenPorMarca", marca);
        }

        public PartialViewResult ActualizarImagenMarca(int idMarca)
        {
            Marca marca = estadisticaServicio.ObtenerMarcaPorId(idMarca);
            ViewBag.marcas = estadisticaServicio.ObtenerMarcas();
            return PartialView("_ImagenPorMarca", marca);
        }
        
        public PartialViewResult ImagenMuestra(string imgUrl)
        {
            return PartialView("_ImagenMuestra", imgUrl);
        }

        

    }
}