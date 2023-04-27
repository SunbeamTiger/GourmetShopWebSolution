using GourmetShopWeb.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace GourmetShopWeb.Data
{
    public class ProductContext : DbContext
    {
        public ProductContext() : base("GourmetShop")
        {

        }

        public DbSet<Product> Products { get; set; }
        public DbSet<Cart_Item> ShoppingCartItems { get; set; }
    }
}