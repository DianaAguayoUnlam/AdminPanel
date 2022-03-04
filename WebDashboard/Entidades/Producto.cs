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
    using System.Collections.Generic;
    
    public partial class Producto
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Producto()
        {
            this.CompraProducto = new HashSet<CompraProducto>();
            this.Imagen = new HashSet<Imagen>();
        }
    
        public int Id { get; set; }
        public string Nombre { get; set; }
        public Nullable<decimal> Precio { get; set; }
        public Nullable<decimal> PrecioBase { get; set; }
        public Nullable<int> stock { get; set; }
        public Nullable<int> idCategoria { get; set; }
        public Nullable<int> idMarca { get; set; }
    
        public virtual Categoria Categoria { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CompraProducto> CompraProducto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Imagen> Imagen { get; set; }
        public virtual Marca Marca { get; set; }
    }
}