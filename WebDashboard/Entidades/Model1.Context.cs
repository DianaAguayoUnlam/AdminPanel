//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Entidades
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class Dashboard_dbEntities : DbContext
    {
        public Dashboard_dbEntities()
            : base("name=Dashboard_dbEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Categoria> Categoria { get; set; }
        public virtual DbSet<Compra> Compra { get; set; }
        public virtual DbSet<CompraProducto> CompraProducto { get; set; }
        public virtual DbSet<Imagen> Imagen { get; set; }
        public virtual DbSet<Marca> Marca { get; set; }
        public virtual DbSet<Producto> Producto { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }
    
        public virtual ObjectResult<sp_ObtenerCantidadDeVentasPorAnio_Result> sp_ObtenerCantidadDeVentasPorAnio()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_ObtenerCantidadDeVentasPorAnio_Result>("sp_ObtenerCantidadDeVentasPorAnio");
        }
    
        public virtual ObjectResult<sp_ObtenerCantidadDeVentasPorMes_Result> sp_ObtenerCantidadDeVentasPorMes()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_ObtenerCantidadDeVentasPorMes_Result>("sp_ObtenerCantidadDeVentasPorMes");
        }
    }
}
