﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Pizza_Shop
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Pizzadata : DbContext
    {
        public Pizzadata()
            : base("name=Pizzadata")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<LoginTable> LoginTables { get; set; }
        public virtual DbSet<pizza> pizzas { get; set; }
        public virtual DbSet<Reg> Regs { get; set; }
        public virtual DbSet<sauce> sauces { get; set; }
    }
}
