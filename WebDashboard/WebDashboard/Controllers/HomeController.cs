
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

    }
}