//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GIBDD_Talyzenkov.ApplicationData
{
    using System;
    using System.Collections.Generic;
    
    public partial class Strahovka
    {
        public int id_Strahovka { get; set; }
        public int id_strahovkaType { get; set; }
        public System.DateTime Date { get; set; }
        public string Kem_Vidano { get; set; }
        public decimal Summa { get; set; }
        public int Id_Car { get; set; }
    
        public virtual Cars Cars { get; set; }
        public virtual Owner Owner { get; set; }
        public virtual Strahovka_Type Strahovka_Type { get; set; }
    }
}