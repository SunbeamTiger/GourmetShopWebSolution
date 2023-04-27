using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

// Notes for meeeeeeeee:
// - database context class (db.cs?); I need to add:  public DbSet<CartItem> ShoppingCartItems { get; set; }


namespace GourmetShopWeb.Models
{
    public class Cart_Item // creating a session object for each product added to the cart
    {
        [Key]
        public string ItemId { get; set; }

        public string CartId { get; set; }

        public int Quantity { get; set; }

        public System.DateTime DateCreated { get; set; }

        public int ProductId { get; set; }

        public virtual Product product { get; set; }
    }
}