//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Clinica.model
{
    using System;
    using System.Collections.Generic;
    
    public partial class ExamenXFicha
    {
        public int id_ExamenXFincha { get; set; }
        public string estado_ExamenXFicha { get; set; }
        public Nullable<int> Examen_idExamen_ExamenXFicha { get; set; }
        public Nullable<int> FichaMedica_idFichaMedica_ExamenXFicha { get; set; }
    
        public virtual Examen Examen { get; set; }
        public virtual FichaMedica FichaMedica { get; set; }
    }
}
